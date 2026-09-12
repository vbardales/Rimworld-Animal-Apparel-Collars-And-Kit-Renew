// Run with Node.js and playwright + sharp installed (or NODE_PATH pointing to them).
const fs=require('fs'), path=require('path'), http=require('http');
const {chromium}=require('playwright'), sharp=require('sharp');
const root=path.resolve(__dirname,'..');
const palette=JSON.parse(fs.readFileSync(path.join(__dirname,'preview-palette.json')));
const luminance=c=>c.map(v=>v/255).map(v=>v<=.04045?v/12.92:((v+.055)/1.055)**2.4).reduce((s,v,i)=>s+v*[.2126,.7152,.0722][i],0);
const rgb=h=>h.match(/\w\w/g).map(x=>parseInt(x,16));
const contrast=(a,b)=>(Math.max(luminance(a),luminance(b))+.05)/(Math.min(luminance(a),luminance(b))+.05);
(async()=>{
 const server=http.createServer((req,res)=>{
  const p=path.resolve(root,'.'+decodeURIComponent(req.url.split('?')[0]));
  if(!p.startsWith(root+path.sep)){res.writeHead(403);return res.end();}
  fs.readFile(p,(err,data)=>{if(err){res.writeHead(404);return res.end();}res.setHeader('Content-Type',p.endsWith('.html')?'text/html':p.endsWith('.json')?'application/json':p.endsWith('.xml')?'application/xml':'image/png');res.end(data);});
 });
 await new Promise(r=>server.listen(0,'127.0.0.1',r));
 let browser;
 try {
  browser=await chromium.launch({executablePath:process.env.CHROME_PATH||'C:/Program Files/Google/Chrome/Application/chrome.exe',headless:true});
  const page=await browser.newPage({viewport:{width:896,height:504},deviceScaleFactor:1});
  await page.goto(`http://127.0.0.1:${server.address().port}/Art/preview.html`);
  await page.evaluate(()=>window.ready);
  const cdp=await page.context().newCDPSession(page);await cdp.send('DOM.enable');await cdp.send('CSS.enable');
  const {root:dom}=await cdp.send('DOM.getDocument');
  const report={version:await page.locator('#version').innerText(),fonts:{},boxes:{},contrast:{}};
  for(const id of ['title','link','suffix','tag','summary','version']){
   const {nodeId}=await cdp.send('DOM.querySelector',{nodeId:dom.nodeId,selector:'#'+id});
   report.fonts[id]=(await cdp.send('CSS.getPlatformFontsForNode',{nodeId})).fonts;
   report.boxes[id]=await page.locator('#'+id).boundingBox();
   if(!report.fonts[id].every(f=>f.familyName.startsWith('Segoe UI')))throw Error('Unexpected font: '+id+JSON.stringify(report.fonts[id]));
   const b=report.boxes[id];if(b.x<0||b.y<0||b.x+b.width>896||b.y+b.height>504)throw Error('Clipped box: '+id);
  }
  const png=await page.screenshot();
  await sharp(png).png({compressionLevel:9}).toFile(path.join(root,'Mod/About/Preview.png'));
  await sharp(png).resize({width:268}).png().toFile(path.join(__dirname,'preview-268.png'));
  await page.addStyleTag({content:'.text, .version {visibility:hidden}'});
  const bg=await page.screenshot();
  await sharp(bg).png().toFile(path.join(__dirname,'preview-background.png'));
  const {data,info}=await sharp(bg).removeAlpha().raw().toBuffer({resolveWithObject:true});
  for(const id of ['title','link','suffix','tag','summary']){
   const b=report.boxes[id],ink=rgb(palette[['tag','suffix'].includes(id)?'inkSecondary':'inkPrimary']);let min=Infinity;
   for(let y=Math.floor(b.y);y<Math.ceil(b.y+b.height);y++)for(let x=Math.floor(b.x);x<Math.ceil(b.x+b.width);x++){
    const i=(y*info.width+x)*info.channels;min=Math.min(min,contrast(ink,[data[i],data[i+1],data[i+2]]));
   }
   report.contrast[id]=+min.toFixed(2);if(min<4.5)throw Error('Contrast below 4.5: '+id+' '+min);
  }
  report.contrast.badge=+contrast(rgb(palette.badgeInk),rgb(palette.accent)).toFixed(2);
  if(report.contrast.badge<4.5)throw Error('Badge contrast');
  report.bytes=fs.statSync(path.join(root,'Mod/About/Preview.png')).size;
  if(report.bytes>=900000)throw Error('Preview too large');
  fs.writeFileSync(path.join(__dirname,'preview-qa.json'),JSON.stringify(report,null,2)+'\n');
  console.log(JSON.stringify(report,null,2));
 } finally {if(browser)await browser.close();server.close();}
})().catch(e=>{console.error(e);process.exitCode=1;});
