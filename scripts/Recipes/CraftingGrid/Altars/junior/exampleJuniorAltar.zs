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

Within this file are the celestial altar
(junior year) recipes for XXXXXXXX.

*****************************************/


//Recipes that yield more than one of an item must be explicitly removed, 1 by 1. Uncomment (remove the /* and the */) this code block if you have any such recipes.
/*
recipes.remove(<embers:pipe>, false);
*/


//The outputs of the recipes. Items put in this list will have their existing recipes automatically removed. See below.

/*
val astralOutputs = [

] as IItemStack[];
*/


//To make an altar recipe, simply lay the items out visually on this grid like they are ingame.
/*
[
    null,null,     null,null,
    null,null,null,null,null,
         null,null,null,
    null,null,null,null,null,
    null,null,     null,null,
]
*/


/*
val astralworkbenchInputs = [

] as IIngredient[][];
*/

/*
val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/blablablablablabla",
] as string[];
*/

/*
//Registration of the recipes. astralWorkbenchNames, astralOutputs, and astralworkbenchInputs must have the same number of entries for this script to work.
for z, item in astralOutputs {

    //Althogh this script lets you lay out the recipes visually, the actual slot order used internally is different, as seen here:
    //https://docs.blamejared.com/1.12/en/Mods/Astral_Sorcery/Altar
    //This code block does some rearranging to fix that problem for you.
    val tempArray = [
        astralworkbenchInputs[z][5], //0
        astralworkbenchInputs[z][6], //1
        astralworkbenchInputs[z][7], //2
        astralworkbenchInputs[z][9], //3
        astralworkbenchInputs[z][10], //4
        astralworkbenchInputs[z][11], //5
        astralworkbenchInputs[z][13], //6
        astralworkbenchInputs[z][14], //7
        astralworkbenchInputs[z][15], //8
        astralworkbenchInputs[z][0], //9
        astralworkbenchInputs[z][3], //10
        astralworkbenchInputs[z][17], //11
        astralworkbenchInputs[z][20], //12
        astralworkbenchInputs[z][1], //13
        astralworkbenchInputs[z][2], //14
        astralworkbenchInputs[z][4], //15
        astralworkbenchInputs[z][8], //16
        astralworkbenchInputs[z][12], //17
        astralworkbenchInputs[z][16], //18
        astralworkbenchInputs[z][18], //19
        astralworkbenchInputs[z][19] //20
    ] as IIngredient[];



    //Remove the existing recipes for the item
    recipes.remove(astralOutputs[z], false);

    //Add the new recipe for the item
    mods.astralsorcery.Altar.addConstellationAltarRecipe(astralworkbenchNames[z], astralOutputs[z], 200, 200, tempArray);
}
*/