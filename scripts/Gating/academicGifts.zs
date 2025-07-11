import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;

val gifts = [
    <minecraft:golden_sword>.withTag({"Quark:RuneColor": 5, ench: [{lvl: 20 as short, id: 21}, {lvl: 32767 as short, id: 34}], RepairCost: 0, display: {Name: "Murphy's Bane"}, "Quark:RuneAttached": 1 as byte}),
    <twilightforest:seeker_bow>.withTag({"Quark:RuneColor": 2, ench: [{lvl: 32767 as short, id: 34 as long}, {lvl: 1 as short, id: 51 as long}], RepairCost: 3 as long, "Quark:RuneAttached": 1 as byte}),
    <iceandfire:creative_dragon_meal>,
    <ebwizardry:spell_book:37>,
    <extrautils2:passivegenerator:5>,
    <extrautils2:playerchest>,
    <ebwizardry:charm_haggler>,
    <thaumicperiphery:caster_ember>,
    <botania:virus>,
    <botania:virus:1>,
    <ebwizardry:charm_minion_health>,
    <embers:tyrfing>.withTag({"Quark:RuneColor": 14, ench: [{lvl: 32767 as short, id: 34 as long}], RepairCost: 1 as long, "Quark:RuneAttached": 1 as byte}),
    <ebwizardry:spell_book:88>,
    <ebwizardry:charm_stop_time>,
    <dimdoors:rift_blade>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 32767 as short, id: 34}], RepairCost: 0, display: {Name: "Slice of Heaven"}, "Quark:RuneAttached": 1 as byte}),
    <thaumicperiphery:caster_elementium>,
    <mana_wizardry:wand_terra>,
    <botania:missilerod>,
    <ebwizardry:ring_condensing>,
    <botania:spawnermover>,
    <embers:tyrfing>,
    <dimdoors:rift_blade>,
] as IItemStack[];

val giftNames = [
    "ardeFreshman",
    "ardeSophomore",
    "ardeGrad",
    "ardeJunior",
    "imperiaGrad",
    "imperiaGrad",
    "imperiaSophomore",
    "imperiaFreshman",
    "musFreshman",
    "musFreshman",
    "musSophomore",
    "musJunior",
    "frigidusFreshman",
    "frigidusJunior",
    "frigidusGrad",
    "vitaFreshman",
    "vitaGrad",
    "vitaJunior",
    "vitaSophomore",
    "musGrad",
    "musJunior",
    "frigidusGrad",
] as string[];

for i, item in gifts {
    Recipes.setRecipeStage(giftNames[i], gifts[i]);
    mods.ItemStages.addItemStage(giftNames[i], gifts[i]);
}