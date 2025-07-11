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


/*****************************************

Within this file are the iridescent altar
(senior year) recipes for botania.

*****************************************/


//Recipes that yield more than one of an item must be explicitly removed, 1 by 1. Uncomment (remove the /* and the */) this code block if you have any such recipes.
//recipes.remove(<embers:pipe>, false);



//The outputs of the recipes. Items put in this list will have their existing recipes automatically removed. See below.
val astralOutputs = [
    <botania:terraplate>
] as IItemStack[];



//To make an altar recipe, simply lay the items out visually on this grid like they are ingame.

/*
    [
        null,null,null,null,null,
        null,null,null,null,null,
        null,null,null,null,null,
        null,null,null,null,null,
        null,null,null,null,null,
    ]
*/



val astralworkbenchInputs = [
    [
        null,null,null,null,null,
        null,null,null,null,null,
        <minecraft:lapis_block>,<minecraft:lapis_block>,<minecraft:emerald>,<minecraft:lapis_block>,<minecraft:lapis_block>,
        <botania:rune:1>,<botania:rune:3>,<botania:rune:8>,<botania:rune:2>,<botania:rune>,
        <botania:storage>,<botania:storage>,<botania:storage>,<botania:storage>,<botania:storage>,
    ]
] as IIngredient[][];



val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/botaniaseniorwb1",
] as string[];






//Registration of the recipes. astralWorkbenchNames, astralOutputs, and astralworkbenchInputs must have the same number of entries for this script to work.
for z, item in astralOutputs {

    //Although this script lets you lay out the recipes visually, the actual slot order used internally is different, as seen here:
    //https://docs.blamejared.com/1.12/en/Mods/Astral_Sorcery/Altar
    //This code block does some rearranging to fix that problem for you.
    val tempArray = [
        astralworkbenchInputs[z][6], //0
        astralworkbenchInputs[z][7], //1
        astralworkbenchInputs[z][8], //2
        astralworkbenchInputs[z][11], //3
        astralworkbenchInputs[z][12], //4
        astralworkbenchInputs[z][13], //5
        astralworkbenchInputs[z][16], //6
        astralworkbenchInputs[z][17], //7
        astralworkbenchInputs[z][18], //8
        astralworkbenchInputs[z][0], //9
        astralworkbenchInputs[z][4], //10
        astralworkbenchInputs[z][20], //11
        astralworkbenchInputs[z][24], //12
        astralworkbenchInputs[z][1], //13
        astralworkbenchInputs[z][3], //14
        astralworkbenchInputs[z][5], //15
        astralworkbenchInputs[z][9], //16
        astralworkbenchInputs[z][15], //17
        astralworkbenchInputs[z][19], //18
        astralworkbenchInputs[z][21], //19
        astralworkbenchInputs[z][23], //20
        astralworkbenchInputs[z][2], //21
        astralworkbenchInputs[z][10], //22
        astralworkbenchInputs[z][14], //23
        astralworkbenchInputs[z][22], //24
    ] as IIngredient[];



    //Remove the existing recipes for the item
    recipes.remove(astralOutputs[z], false);

    //Add the new recipe for the item
    mods.astralsorcery.Altar.addTraitAltarRecipe(astralworkbenchNames[z], astralOutputs[z], 200, 200, tempArray);
}