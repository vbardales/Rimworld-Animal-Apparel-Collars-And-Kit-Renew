from PIL import Image
import json,math,os
im=Image.open('Mod/About/Preview.png').convert('RGB');bg=Image.open('Art/Preview-background-qa.png').convert('RGB');p=json.load(open('Art/preview-palette.json',encoding='utf-8-sig'));q=json.load(open('Art/Preview-qa.json'))
def lum(c):
 s=[v/255 for v in c];s=[v/12.92 if v<=.04045 else ((v+.055)/1.055)**2.4 for v in s];return sum(v*w for v,w in zip(s,[.2126,.7152,.0722]))
def rgb(h):return tuple(bytes.fromhex(h[1:]))
def contrast(a,b):
 a,b=sorted([lum(a),lum(b)]);return (b+.05)/(a+.05)
def distance(a,b):return sum((x-y)**2 for x,y in zip(a,b))**.5
for k,e in q['elements'].items():
 b=e.get('bounds')
 if not b:continue
 box=(math.floor(b['x']),math.floor(b['y']),math.ceil(b['x']+b['width']),math.ceil(b['y']+b['height']))
 assert box[0]>=0 and box[1]>=0 and box[2]<=896 and box[3]<=504
 if k=='.version':r=contrast(rgb(p['badgeInk']),rgb(p['accent']))
 else:
  inks=[rgb(p['inkSecondary' if k in ('.tag','.suffix') else 'inkPrimary'])]
  if k=='.title-main':inks.append(rgb(p['inkSecondary']))
  samples=[]
  for final,behind in zip(im.crop(box).getdata(),bg.crop(box).getdata()):
   ink=min(inks,key=lambda c:distance(final,c))
   if distance(final,ink)<=24 and distance(final,ink)<distance(behind,ink):samples.append(contrast(ink,behind))
  assert samples,(k,'no opaque text-core pixels')
  r=min(samples)
 e['minimumContrast']=round(r,3);assert r>=4.5,(k,r)
q['size']=im.size;q['bytes']=os.path.getsize('Mod/About/Preview.png');assert q['bytes']<900000
im.resize((268,151),Image.Resampling.LANCZOS).save('Art/Preview-thumbnail-qa.png');json.dump(q,open('Art/Preview-qa.json','w'),indent=2);print([(k,e['minimumContrast']) for k,e in q['elements'].items() if 'minimumContrast' in e]);print(q['bytes'])
