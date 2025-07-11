import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.astralsorcery.Altar;



//ARCANE WORKBENCH
//mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[] input);
//mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("name", "", vis, [aspects], output, [inputs]);
val workbenchOutputs = [
    <ebwizardry:acacia_lectern>,
    <ebwizardry:dark_oak_lectern>,
    <tfspellpack:minewood_lectern>,
    <ebwizardry:oak_lectern>,
    <tfspellpack:darkwood_lectern>,
    <tfspellpack:timewood_lectern>,
    <ebwizardry:spruce_lectern>,
    <tfspellpack:sortingwood_lectern>,
    <ebwizardry:birch_lectern>,
    <tfspellpack:canopy_lectern>,
    <ebwizardry:jungle_lectern>,
    <tfspellpack:mangrove_lectern>,
    <tfspellpack:twilight_oak_lectern>,
    <tfspellpack:transwood_lectern>
] as IItemStack[];

val workbenchInputs = [
    [[<ebwizardry:gilded_wood:4>, <minecraft:book>, <ebwizardry:gilded_wood:4>], [<ebwizardry:grand_crystal>, <ebwizardry:gilded_wood:4>, <ebwizardry:grand_crystal>], [<ebwizardry:gilded_wood:4>, <ebwizardry:gilded_wood:4>, <ebwizardry:gilded_wood:4>]],
    [[<ebwizardry:gilded_wood:5>, <minecraft:book>, <ebwizardry:gilded_wood:5>], [<ebwizardry:grand_crystal>, <ebwizardry:gilded_wood:5>, <ebwizardry:grand_crystal>], [<ebwizardry:gilded_wood:5>, <ebwizardry:gilded_wood:5>, <ebwizardry:gilded_wood:5>]],
    [[<tfspellpack:gilded_minewood>, <minecraft:book>, <tfspellpack:gilded_minewood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_minewood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_minewood>, <tfspellpack:gilded_minewood>, <tfspellpack:gilded_minewood>]],
    [[<ebwizardry:gilded_wood>, <minecraft:book>, <ebwizardry:gilded_wood>], [<ebwizardry:grand_crystal>, <ebwizardry:gilded_wood>, <ebwizardry:grand_crystal>], [<ebwizardry:gilded_wood>, <ebwizardry:gilded_wood>, <ebwizardry:gilded_wood>]],
    [[<tfspellpack:gilded_darkwood>, <minecraft:book>, <tfspellpack:gilded_darkwood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_darkwood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_darkwood>, <tfspellpack:gilded_darkwood>, <tfspellpack:gilded_darkwood>]],
    [[<tfspellpack:gilded_timewood>, <minecraft:book>, <tfspellpack:gilded_timewood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_timewood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_timewood>, <tfspellpack:gilded_timewood>, <tfspellpack:gilded_timewood>]],
    [[<ebwizardry:gilded_wood:1>, <minecraft:book>, <ebwizardry:gilded_wood:1>], [<ebwizardry:grand_crystal>, <ebwizardry:gilded_wood:1>, <ebwizardry:grand_crystal>], [<ebwizardry:gilded_wood:1>, <ebwizardry:gilded_wood:1>, <ebwizardry:gilded_wood:1>]],
    [[<tfspellpack:gilded_sortingwood>, <minecraft:book>, <tfspellpack:gilded_sortingwood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_sortingwood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_sortingwood>, <tfspellpack:gilded_sortingwood>, <tfspellpack:gilded_sortingwood>]],
    [[<ebwizardry:gilded_wood:2>, <minecraft:book>, <ebwizardry:gilded_wood:2>], [<ebwizardry:grand_crystal>, <ebwizardry:gilded_wood:2>, <ebwizardry:grand_crystal>], [<ebwizardry:gilded_wood:2>, <ebwizardry:gilded_wood:2>, <ebwizardry:gilded_wood:2>]],
    [[<tfspellpack:gilded_canopy_wood>, <minecraft:book>, <tfspellpack:gilded_canopy_wood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_canopy_wood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_canopy_wood>, <tfspellpack:gilded_canopy_wood>, <tfspellpack:gilded_canopy_wood>]],
    [[<ebwizardry:gilded_wood:3>, <minecraft:book>, <ebwizardry:gilded_wood:3>], [<ebwizardry:grand_crystal>, <ebwizardry:gilded_wood:3>, <ebwizardry:grand_crystal>], [<ebwizardry:gilded_wood:3>, <ebwizardry:gilded_wood:3>, <ebwizardry:gilded_wood:3>]],
    [[<tfspellpack:gilded_mangrove_wood>, <minecraft:book>, <tfspellpack:gilded_mangrove_wood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_mangrove_wood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_mangrove_wood>, <tfspellpack:gilded_mangrove_wood>, <tfspellpack:gilded_mangrove_wood>]],
    [[<tfspellpack:gilded_twilight_oak_wood>, <minecraft:book>, <tfspellpack:gilded_twilight_oak_wood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_twilight_oak_wood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_twilight_oak_wood>, <tfspellpack:gilded_twilight_oak_wood>, <tfspellpack:gilded_twilight_oak_wood>]],
    [[<tfspellpack:gilded_transwood>, <minecraft:book>, <tfspellpack:gilded_transwood>], [<ebwizardry:grand_crystal>, <tfspellpack:gilded_transwood>, <ebwizardry:grand_crystal>], [<tfspellpack:gilded_transwood>, <tfspellpack:gilded_transwood>, <tfspellpack:gilded_transwood>]]
] as IIngredient[][][];

val workbenchNames = [
    "ebwizworkbench1",
    "ebwizworkbench2",
    "ebwizworkbench3",
    "ebwizworkbench4",
    "ebwizworkbench5",
    "ebwizworkbench6",
    "ebwizworkbench7",
    "ebwizworkbench8",
    "ebwizworkbench9",
    "ebwizworkbencha",
    "ebwizworkbenchb",
    "ebwizworkbenchc",
    "ebwizworkbenchd",
    "ebwizworkbenche"
] as string[];

/*
val workbenchKeys = [

] as string[];
*/

//mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[][] input);
for l, item in workbenchOutputs {
    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(workbenchNames[l], "EBWIZLECTERN@3", 5, [<aspect:aer>*2, <aspect:ordo>*2], workbenchOutputs[l], workbenchInputs[l]);
}











val astralworkbenchInputs = [
    [<ebwizardry:gilded_wood:4>,<minecraft:book>,<ebwizardry:gilded_wood:4>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:4>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:4>,<ebwizardry:gilded_wood:4>,<ebwizardry:gilded_wood:4>],
    [<ebwizardry:gilded_wood:5>,<minecraft:book>,<ebwizardry:gilded_wood:5>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:5>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:5>,<ebwizardry:gilded_wood:5>,<ebwizardry:gilded_wood:5>],
    [<tfspellpack:gilded_minewood>,<minecraft:book>,<tfspellpack:gilded_minewood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_minewood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_minewood>,<tfspellpack:gilded_minewood>,<tfspellpack:gilded_minewood>],
    [<ebwizardry:gilded_wood>,<minecraft:book>,<ebwizardry:gilded_wood>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood>,<ebwizardry:gilded_wood>,<ebwizardry:gilded_wood>],
    [<tfspellpack:gilded_darkwood>,<minecraft:book>,<tfspellpack:gilded_darkwood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_darkwood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_darkwood>,<tfspellpack:gilded_darkwood>,<tfspellpack:gilded_darkwood>],
    [<tfspellpack:gilded_timewood>,<minecraft:book>,<tfspellpack:gilded_timewood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_timewood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_timewood>,<tfspellpack:gilded_timewood>,<tfspellpack:gilded_timewood>],
    [<ebwizardry:gilded_wood:1>,<minecraft:book>,<ebwizardry:gilded_wood:1>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:1>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:1>,<ebwizardry:gilded_wood:1>,<ebwizardry:gilded_wood:1>],
    [<tfspellpack:gilded_sortingwood>,<minecraft:book>,<tfspellpack:gilded_sortingwood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_sortingwood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_sortingwood>,<tfspellpack:gilded_sortingwood>,<tfspellpack:gilded_sortingwood>],
    [<ebwizardry:gilded_wood:2>,<minecraft:book>,<ebwizardry:gilded_wood:2>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:2>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:2>,<ebwizardry:gilded_wood:2>,<ebwizardry:gilded_wood:2>],
    [<tfspellpack:gilded_canopy_wood>,<minecraft:book>,<tfspellpack:gilded_canopy_wood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_canopy_wood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_canopy_wood>,<tfspellpack:gilded_canopy_wood>,<tfspellpack:gilded_canopy_wood>],
    [<ebwizardry:gilded_wood:3>,<minecraft:book>,<ebwizardry:gilded_wood:3>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:3>,<ebwizardry:grand_crystal>,<ebwizardry:gilded_wood:3>,<ebwizardry:gilded_wood:3>,<ebwizardry:gilded_wood:3>],
    [<tfspellpack:gilded_mangrove_wood>,<minecraft:book>,<tfspellpack:gilded_mangrove_wood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_mangrove_wood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_mangrove_wood>,<tfspellpack:gilded_mangrove_wood>,<tfspellpack:gilded_mangrove_wood>],
    [<tfspellpack:gilded_twilight_oak_wood>,<minecraft:book>,<tfspellpack:gilded_twilight_oak_wood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_twilight_oak_wood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_twilight_oak_wood>,<tfspellpack:gilded_twilight_oak_wood>,<tfspellpack:gilded_twilight_oak_wood>],
    [<tfspellpack:gilded_transwood>,<minecraft:book>,<tfspellpack:gilded_transwood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_transwood>,<ebwizardry:grand_crystal>,<tfspellpack:gilded_transwood>,<tfspellpack:gilded_transwood>,<tfspellpack:gilded_transwood>]
] as IIngredient[][];

val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/ebwizworkbench1",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench2",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench3",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench4",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench5",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench6",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench7",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench8",
    "tungstenmagic:shaped/internal/altar/ebwizworkbench9",
    "tungstenmagic:shaped/internal/altar/ebwizworkbencha",
    "tungstenmagic:shaped/internal/altar/ebwizworkbenchb",
    "tungstenmagic:shaped/internal/altar/ebwizworkbenchc",
    "tungstenmagic:shaped/internal/altar/ebwizworkbenchd",
    "tungstenmagic:shaped/internal/altar/ebwizworkbenche"
] as string[];

for z, item in workbenchOutputs {
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe(astralworkbenchNames[z], workbenchOutputs[z], 200, 200, astralworkbenchInputs[z]);
}