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

This file contains the crucible recipes for Arcane Archives.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/


val crucibleOutPuts =[
    <arcanearchives:raw_quartz>
] as IItemStack[];

val crucibleInputs =[
    <minecraft:quartz>
] as IItemStack[];

val crucibleAspects = [
    [<aspect:praecantatio>*5, <aspect:lux>*5]
] as CTAspectStack[][];

val crucibleNames = [
    "radiantquartz"
] as string[];

val crucibleKeys = [
    "RAWRADIANTQUARTZ@2"
] as string[];


for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}
