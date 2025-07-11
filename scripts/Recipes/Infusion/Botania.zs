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

This file contains the infusion recipes for botania.

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
//mods.thaumcraft.Infusion.registerRecipe("name", "key[@x]", output, instability, [aspects], Item, recipe);
********************************************************/

val infusionOutputs =[

] as IItemStack[];

val infusionInputs =[

] as IItemStack[];

val infusionSides =[

] as IIngredient[][];

val infusionAspects = [

] as CTAspectStack[][];

val infusionNames = [

] as string[];

val infusionKeys = [

] as string[];

val instabilities = [

] as int[];

for k, item in infusionOutputs {
    mods.thaumcraft.Infusion.registerRecipe(infusionNames[k], infusionKeys[k], infusionOutputs[k], instabilities[k], infusionAspects[k], infusionInputs[k], infusionSides[k]);
}