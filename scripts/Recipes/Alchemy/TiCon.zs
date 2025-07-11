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

This file contains the crucible recipes for nnnnnnnnn.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/


val crucibleOutPuts =[
    <tconstruct:materials>
] as IItemStack[];

val crucibleInputs =[
    <minecraft:brick>
] as IItemStack[];

val crucibleAspects = [
    [<aspect:perditio>*5]
] as CTAspectStack[][];

val crucibleNames = [
    "searedbrick"
] as string[];

val crucibleKeys = [
    "SEAREDBRICK"
] as string[];


for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}