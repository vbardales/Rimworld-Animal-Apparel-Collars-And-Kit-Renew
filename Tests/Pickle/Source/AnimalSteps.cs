using System;
using System.Linq;
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

        [Given("Animal Apparel Collars: a tame {string} named {string} exists at ({int}, {int})")]
        public void TameAnimalExists(PickleContext ctx, string kindDefName, string nickname, int x, int z)
        {
            Map map = Find_.Map();
            ctx.Require(map != null, "there is no current map: load a save first");
            PawnKindDef kind = DefDatabase<PawnKindDef>.GetNamedSilentFail(kindDefName);
            ctx.Require(kind != null, $"no PawnKindDef '{kindDefName}'");
            if (Find(nickname) != null)
            {
                return;
            }

            Pawn pawn = PawnGenerator.GeneratePawn(kind, Faction.OfPlayer);
            pawn.Name = new NameSingle(nickname);
            IntVec3 cell = new IntVec3(x, 0, z);
            ctx.Require(cell.InBounds(map), $"cell ({x}, {z}) is outside the map");
            GenSpawn.Spawn(pawn, cell, map);
            ctx.Require(pawn.Spawned, $"'{kindDefName}' did not spawn at ({x}, {z})");
            ctx.Require(pawn.apparel != null, $"'{kindDefName}' has no apparel tracker: the framework did not give animals one");
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
