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
//The_AsphaltDevil


/***************************************************

Within this file are the starlight crafting  altar
(sophomore year) recipes for botania.

***************************************************/


//Recipes that yield more than one of an item must be explicitly removed, 1 by 1. Uncomment (remove the /* and the */) this code block if you have any such recipes.



//The outputs of the recipes. Items put in this list will have their existing recipes automatically removed. See below.


val astralOutputs = [
    <botania:lens>.withTag({}),
    <botania:alchemycatalyst>
] as IItemStack[];



//To make an altar recipe, simply lay the items out visually on this grid like they are ingame.
/*
[
    null,               null,
         null,null,null,
         null,null,null,
         null,null,null,
    null,               null,
],
*/


val astralworkbenchInputs = [
[
    <botania:manaresource>,/**************/<botania:manaresource>,
         <botania:managlasspane>,<botania:managlasspane>,<botania:managlasspane>,
         <botania:managlasspane>,<botania:managlasspane>,<botania:managlasspane>,
         <botania:managlasspane>,<botania:managlasspane>,<botania:managlasspane>,
    <botania:manaresource>,/**************/<botania:manaresource>,
],
[
    <minecraft:gold_ingot>,/**************/<minecraft:gold_ingot>,
         <botania:livingrock>,<botania:livingrock>,<botania:livingrock>,
         <minecraft:brewing_stand>,<botania:manaresource:1>,<minecraft:brewing_stand>,
         <botania:livingrock>,<botania:livingrock>,<botania:livingrock>,
    <minecraft:gold_ingot>,/**************/<minecraft:gold_ingot>,
],
] as IIngredient[][];



val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/sophomorebotaniaaltar1",
    "tungstenmagic:shaped/internal/altar/sophomorebotaniaaltar2",
] as string[];



//Registration of the recipes. astralWorkbenchNames, astralOutputs, and astralworkbenchInputs must have the same number of entries for this script to work.
for z, item in astralOutputs {

    //Althogh this script lets you lay out the recipes visually, the actual slot order used internally is different, as seen here:
    //https://docs.blamejared.com/1.12/en/Mods/Astral_Sorcery/Altar
    //This code block does some rearranging to fix that problem for you.
    val tempArray = [
        astralworkbenchInputs[z][2], //0
        astralworkbenchInputs[z][3], //1
        astralworkbenchInputs[z][4], //2
        astralworkbenchInputs[z][5], //3
        astralworkbenchInputs[z][6], //4
        astralworkbenchInputs[z][7], //5
        astralworkbenchInputs[z][8], //6
        astralworkbenchInputs[z][9], //7
        astralworkbenchInputs[z][10], //8
        astralworkbenchInputs[z][0], //9
        astralworkbenchInputs[z][1], //10
        astralworkbenchInputs[z][11], //11
        astralworkbenchInputs[z][12], //12
    ] as IIngredient[];



    //Remove the existing recipes for the item
    recipes.remove(astralOutputs[z], false);

    //Add the new recipe for the item
    mods.astralsorcery.Altar.addAttunementAltarRecipe(astralworkbenchNames[z], astralOutputs[z], 200, 200, tempArray);
}