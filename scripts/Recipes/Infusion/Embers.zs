import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;



//The_AsphaltDevil
/********************************************************

This file contains the infusion recipes for Embers, Soot, and Mystical Mechanics.

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
//mods.thaumcraft.Infusion.registerRecipe("name", "key[@x]", output, instability, [aspects], Item, recipe);
********************************************************/


val infusionOutputs =[
    <embers:axe_clockwork>,
    <embers:pickaxe_clockwork>,
    <embers:grandhammer>,
    <embers:staff_ember>,
    <embers:ignition_cannon>,
] as IItemStack[];

val infusionInputs =[
    <embers:axe_dawnstone>,
    <embers:pickaxe_dawnstone>,
    <embers:sword_dawnstone>,
    <embers:hoe_dawnstone>,
    <minecraft:bow>
] as IItemStack[];

val infusionSides =[
    [<thaumcraft:mechanism_simple>,<thaumcraft:mechanism_simple>],
    [<thaumcraft:mechanism_simple>,<thaumcraft:mechanism_simple>],
    [<thaumcraft:mechanism_simple>,<thaumcraft:mechanism_simple>],
    [<thaumcraft:mechanism_simple>,<thaumcraft:mechanism_simple>],
    [<embers:ingot_dawnstone>,<embers:ingot_dawnstone>]
] as IIngredient[][];

val infusionAspects = [
    [<aspect:potentia>*100, <aspect:ignis>*100],
    [<aspect:potentia>*100, <aspect:ignis>*100],
    [<aspect:potentia>*100, <aspect:ignis>*100],
    [<aspect:potentia>*100, <aspect:ignis>*100],
    [<aspect:potentia>*100, <aspect:ignis>*100]
] as CTAspectStack[][];

val infusionNames = [
    "axeClockwork",
    "pickaxeClockwork",
    "grandhammer",
    "cinderStaff",
    "blazingRay"
] as string[];

val infusionKeys = [
    "CLOCKWORKTOOLS@2",
    "CLOCKWORKTOOLS@2",
    "CLOCKWORKTOOLS@2",
    "CLOCKWORKTOOLS@2",
    "CLOCKWORKTOOLS@2"
] as string[];

val instabilities = [
    10,
    10,
    10,
    10,
    10
] as int[];

for k, item in infusionOutputs {
    mods.thaumcraft.Infusion.registerRecipe(infusionNames[k], infusionKeys[k], infusionOutputs[k], instabilities[k], infusionAspects[k], infusionInputs[k], infusionSides[k]);
}