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

mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("antiqueatlas", "ANTIQUEATLAS", 100, [<aspect:aer>, <aspect:ordo>], <antiqueatlas:empty_antique_atlas>, [<minecraft:book>, <minecraft:compass>]);

val workbenchOutputs = [
    <bibliocraft:stockroomcatalog>
] as IItemStack[];

val workbenchInputs = [
    [[<minecraft:paper>, <minecraft:dye:2>, <minecraft:paper>], [<minecraft:paper>, <minecraft:writable_book>, <minecraft:paper>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]
] as IIngredient[][][];

val workbenchNames = [
    "stockroom"
] as string[];


val workbenchKeys = [
    "STOCKROOMCATALOG"
] as string[];


//mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[][] input);
for l, item in workbenchOutputs {
    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(workbenchNames[l], workbenchKeys[l], 5, [<aspect:aer>*2, <aspect:ordo>*2], workbenchOutputs[l], workbenchInputs[l]);
}




mods.astralsorcery.Altar.addDiscoveryAltarRecipe("tungstenmagic:shaped/internal/altar/biblio", <bibliocraft:stockroomcatalog>, 200, 200, [<minecraft:paper>, <minecraft:dye:2>, <minecraft:paper>, <minecraft:paper>, <minecraft:writable_book>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]);