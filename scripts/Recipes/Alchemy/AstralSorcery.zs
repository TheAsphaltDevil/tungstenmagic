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

This file contains the crucible recipes for Astral Sorcery.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/


val crucibleOutPuts =[
    <astralsorcery:itemcraftingcomponent:5>,
    <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:blockblackmarble>
] as IItemStack[];

val crucibleInputs =[
    <minecraft:paper>,
    <minecraft:quartz>,
    <astralsorcery:blockmarble>
] as IItemStack[];

val crucibleAspects = [
    [<aspect:aqua>*2, <aspect:lux>],
    [<aspect:aqua>*4],
    [<aspect:perditio>*1]
] as CTAspectStack[][];

val crucibleNames = [
    "astralParchment",
    "aquamarine",
    "sootyMarble"
] as string[];

val crucibleKeys = [
    "",
    "",
    ""
] as string[];


for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}