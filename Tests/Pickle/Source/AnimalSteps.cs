using System;
using System.Linq;
using System.Reflection;
using RimWorks.Pickle;
using RimWorld;
using Verse;

namespace AnimalApparelCollars.PickleSteps
{
    /// <summary>
    /// A tame, named animal and what it wears. Pickle's dress and wear steps resolve colonists by nickname, so
    /// they cannot reach an animal: these steps find it themselves, among the pawns spawned on the current map.
    /// </summary>
    [PickleSteps]
    public class AnimalSteps
    {
        private static Pawn Find(string nickname)
        {
            Map map = Find_.Map();
            return map?.mapPawns.AllPawnsSpawned.FirstOrDefault(
                p => string.Equals(p.Name?.ToStringShort, nickname, StringComparison.OrdinalIgnoreCase));
        }

        private static Pawn Require(PickleContext ctx, string nickname)
        {
            Pawn pawn = Find(nickname);
            if (pawn != null)
            {
                return pawn;
            }

            string known = string.Join(", ", (Find_.Map()?.mapPawns.AllPawnsSpawned ?? new System.Collections.Generic.List<Pawn>())
                .Select(p => p.Name?.ToStringShort ?? p.def.defName));
            throw new InvalidOperationException($"no pawn named '{nickname}' on the map; the pawns are {known}");
        }

        // The framework creates the outfit, equipment and apparel trackers of a player animal with this helper.
        private static void EnsureTrackers(Pawn pawn)
        {
            Type helper = GenTypes.AllTypes.FirstOrDefault(t => t.Name == "AnimalGearHelper");
            MethodInfo method = helper?.GetMethod("EnsureInitApparelTrackers", BindingFlags.Public | BindingFlags.Static);
            method?.Invoke(null, new object[] { pawn });
        }

        private static float AverageDamage(Pawn pawn, int hits, float damage)
        {
            float sum = 0f;
            for (int i = 0; i < hits; i++)
            {
                DamageDef def = DamageDefOf.Cut;
                sum += ArmorUtility.GetPostArmorDamage(pawn, damage, 0f, pawn.RaceProps.body.corePart, ref def, out bool _, out bool _);
            }

            return sum / hits;
        }

        [Then("Animal Apparel Collars: {string} takes less damage than {string} over {int} cuts of {int} damage")]
        public void TakesLess(PickleContext ctx, string armoured, string bare, int hits, int damage)
        {
            Pawn a = Require(ctx, armoured);
            Pawn b = Require(ctx, bare);
            float avgA = AverageDamage(a, hits, damage);
            float avgB = AverageDamage(b, hits, damage);
            ctx.Require(avgA < avgB, $"'{armoured}' takes {avgA:F2} on average and '{bare}' takes {avgB:F2} from {hits} cuts of {damage}: the armour is not counted");
        }

        // Found on 2026-09-27 (ab10): every @review capture showed a blank, unlit patch of ground reading
        // "Undiscovered", although the camera really was centred on the spawned pawn (the "can see" check
        // is a coordinate check, not proof of rendering). A fixed cell such as (60, 60) has no reason to sit
        // inside the small fixture's revealed home area, and RimWorld does not draw anything - terrain or
        // pawns - in a cell the player has never uncovered. Spawning next to an existing colonist instead
        // guarantees a revealed, walkable cell.
        [Given("Animal Apparel Collars: a tame {string} named {string} exists near the colony")]
        public void TameAnimalExistsNearColony(PickleContext ctx, string kindDefName, string nickname)
        {
            Map map = Find_.Map();
            ctx.Require(map != null, "there is no current map: load a save first");
            PawnKindDef kind = DefDatabase<PawnKindDef>.GetNamedSilentFail(kindDefName);
            ctx.Require(kind != null, $"no PawnKindDef '{kindDefName}'");
            if (Find(nickname) != null)
            {
                return;
            }

            Pawn anchor = map.mapPawns.FreeColonists.FirstOrDefault();
            ctx.Require(anchor != null, "no free colonist on the map to spawn the animal near");
            IntVec3 cell = CellFinder.RandomClosewalkCellNear(anchor.Position, map, 5);
            ctx.Require(cell.IsValid, $"could not find a walkable cell near {anchor.Position}");

            Pawn pawn = PawnGenerator.GeneratePawn(kind, Faction.OfPlayer);
            pawn.Name = new NameSingle(nickname);
            GenSpawn.Spawn(pawn, cell, map);
            ctx.Require(pawn.Spawned, $"'{kindDefName}' did not spawn near {anchor.Position}");
            EnsureTrackers(pawn);
            ctx.Require(pawn.apparel != null, $"'{kindDefName}' has no apparel tracker even after the framework's EnsureInitApparelTrackers");
        }

        [When("Animal Apparel Collars: {string} is dressed in {string}")]
        public void Dress(PickleContext ctx, string nickname, string apparelDefName)
        {
            Pawn pawn = Require(ctx, nickname);
            ctx.Require(pawn.apparel != null, $"'{nickname}' has no apparel tracker");
            ThingDef def = DefDatabase<ThingDef>.GetNamedSilentFail(apparelDefName);
            ctx.Require(def != null, $"no ThingDef '{apparelDefName}'");
            ThingDef stuff = def.MadeFromStuff ? GenStuff.DefaultStuffFor(def) : null;
            Apparel apparel = (Apparel)ThingMaker.MakeThing(def, stuff);
            pawn.apparel.Wear(apparel, true, false);
        }

        [Then("Animal Apparel Collars: {string} is wearing {string}")]
        public void IsWearing(PickleContext ctx, string nickname, string apparelDefName)
        {
            Pawn pawn = Require(ctx, nickname);
            ctx.Require(pawn.apparel != null, $"'{nickname}' has no apparel tracker");
            bool worn = pawn.apparel.WornApparel.Any(a => a.def.defName == apparelDefName);
            ctx.Require(worn, $"'{nickname}' is not wearing '{apparelDefName}'; it wears " +
                string.Join(", ", pawn.apparel.WornApparel.Select(a => a.def.defName)));
        }

        [When("Animal Apparel Collars: {string} is stripped of its apparel")]
        public void Strip(PickleContext ctx, string nickname)
        {
            // Pickle's own "I strip" resolves a player colonist by nickname (the same lookup that failed on an
            // animal before this file existed): this one uses the same animal-aware lookup as the rest here.
            Pawn pawn = Require(ctx, nickname);
            ctx.Require(pawn.apparel != null, $"'{nickname}' has no apparel tracker");
            foreach (Apparel apparel in pawn.apparel.WornApparel.ToList())
            {
                pawn.apparel.Remove(apparel);
            }
        }

        // Pickle's own "I move the camera to {string}" and "the camera can see {string}" resolve a player
        // colonist by nickname, the same restriction that failed on "I dress" before this file existed.
        [When("Animal Apparel Collars: the camera is centered on {string}")]
        public void CenterCameraOn(PickleContext ctx, string nickname)
        {
            Pawn pawn = Require(ctx, nickname);
            Verse.Find.CameraDriver.JumpToCurrentMapLoc(pawn.Position);
        }

        [Then("Animal Apparel Collars: the camera can see {string}")]
        public void CameraCanSee(PickleContext ctx, string nickname)
        {
            Pawn pawn = Require(ctx, nickname);
            ctx.Require(Verse.Find.CameraDriver.CurrentViewRect.Contains(pawn.Position),
                $"the camera does not see '{nickname}' at {pawn.Position}; the view rect is {Verse.Find.CameraDriver.CurrentViewRect}");
        }

        // The "test-colony" fixture has no pirate faction (found on 2026-09-28, e22f): use any faction that is
        // already hostile to the player, and only make one when the save has none.
        private static Faction HostileFaction(PickleContext ctx)
        {
            Faction player = Faction.OfPlayer;
            Faction existing = Verse.Find.FactionManager.AllFactionsListForReading
                .FirstOrDefault(f => f != player && !f.defeated && f.HostileTo(player));
            if (existing != null)
            {
                return existing;
            }

            Faction made = FactionGenerator.NewGeneratedFaction(new FactionGeneratorParms(FactionDefOf.Pirate));
            ctx.Require(made != null, "could not generate a pirate faction for the hostile target");
            Verse.Find.FactionManager.Add(made);
            ctx.Require(made.HostileTo(player), $"the generated faction '{made.Name}' is not hostile to the player");
            return made;
        }

        [Given("Animal Apparel Collars: a hostile {string} named {string} exists near the colony")]
        public void HostileAnimalExistsNearColony(PickleContext ctx, string kindDefName, string nickname)
        {
            Map map = Find_.Map();
            ctx.Require(map != null, "there is no current map: load a save first");
            PawnKindDef kind = DefDatabase<PawnKindDef>.GetNamedSilentFail(kindDefName);
            ctx.Require(kind != null, $"no PawnKindDef '{kindDefName}'");
            if (Find(nickname) != null)
            {
                return;
            }

            Pawn anchor = map.mapPawns.FreeColonists.FirstOrDefault();
            ctx.Require(anchor != null, "no free colonist on the map to spawn the target near");
            IntVec3 cell = CellFinder.RandomClosewalkCellNear(anchor.Position, map, 5);
            ctx.Require(cell.IsValid, $"could not find a walkable cell near {anchor.Position}");

            Faction hostile = HostileFaction(ctx);
            Pawn pawn = PawnGenerator.GeneratePawn(kind, hostile);
            pawn.Name = new NameSingle(nickname);
            GenSpawn.Spawn(pawn, cell, map);
            ctx.Require(pawn.Spawned, $"'{kindDefName}' did not spawn near {anchor.Position}");
        }

        // Scenario E of TESTING.md: a turret pack must actually fire, not just draw. MVCF's own
        // Comp_VerbGiver (a ThingComp on the worn apparel, not on the pawn) is not a compile-time reference
        // of this companion, so it is found by name; VerbTracker and Verb are core Verse types once found.
        // Notify_Worn(pawn) sets verb.caster when the apparel is worn through the patched path; setting it
        // again here makes the assertion independent of whether that hook fired for a pawn dressed directly
        // by this file's Wear() call.
        [When("Animal Apparel Collars: {string} fires its turret pack at {string}")]
        public void FireTurretPackAt(PickleContext ctx, string wearerNickname, string targetNickname)
        {
            Pawn wearer = Require(ctx, wearerNickname);
            Pawn target = Require(ctx, targetNickname);
            Apparel pack = wearer.apparel?.WornApparel.FirstOrDefault(
                a => a.AllComps.Any(c => c.GetType().Name == "Comp_VerbGiver"));
            ctx.Require(pack != null, $"'{wearerNickname}' wears no apparel with a Comp_VerbGiver (no turret pack)");

            ThingComp comp = pack.AllComps.First(c => c.GetType().Name == "Comp_VerbGiver");
            object trackerObj = comp.GetType().GetProperty("VerbTracker")?.GetValue(comp);
            VerbTracker tracker = trackerObj as VerbTracker;
            ctx.Require(tracker != null, "Comp_VerbGiver has no readable VerbTracker");
            Verb verb = tracker.AllVerbs?.FirstOrDefault();
            ctx.Require(verb != null, "the turret pack's VerbTracker has no verb");

            verb.caster = wearer;
            bool started = verb.TryStartCastOn(target, surpriseAttack: true);
            ctx.Require(started, $"the turret pack's verb refused to fire at '{targetNickname}'");
        }

        // Pickle's own catalogue only has "{string} health is above {int} percent"; proving real damage
        // needs the other direction.
        [Then("Animal Apparel Collars: {string} health is below {int} percent")]
        public void HealthIsBelow(PickleContext ctx, string nickname, int percent)
        {
            Pawn pawn = Require(ctx, nickname);
            float actual = pawn.health.summaryHealth.SummaryHealthPercent * 100f;
            ctx.Require(actual < percent, $"'{nickname}' health is {actual:F1}%, not below {percent}%");
        }

        [Then("Animal Apparel Collars: {string} apparel covers {string}")]
        public void Covers(PickleContext ctx, string nickname, string groupDefName)
        {
            Pawn pawn = Require(ctx, nickname);
            ctx.Require(pawn.apparel != null, $"'{nickname}' has no apparel tracker");
            bool covered = pawn.apparel.WornApparel.Any(
                a => a.def.apparel.bodyPartGroups.Any(g => g.defName == groupDefName));
            ctx.Require(covered, $"'{nickname}' wears nothing on '{groupDefName}'");
        }

        private static class Find_
        {
            public static Map Map() => Verse.Find.CurrentMap;
        }
    }
}
