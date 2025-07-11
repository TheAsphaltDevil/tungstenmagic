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
(junior year) recipes for Botania.

*****************************************/


//Recipes that yield more than one of an item must be explicitly removed, 1 by 1. Uncomment (remove the /* and the */) this code block if you have any such recipes.



//The outputs of the recipes. Items put in this list will have their existing recipes automatically removed. See below.


val astralOutputs = [
    <botania:sparkchanger>,
    <botania:spawnerclaw>,
    <botania:pylon:1>,
    <botania:starfield>,
    <botania:forestdrum:1>,
    <botania:opencrate:1>,
    <botania:lightlauncher>,
    <botania:conjurationcatalyst>,
    <botania:spreader:2>,
    <botania:platform:1>,
    <botania:prism>,
    <botania:alfheimportal>
] as IItemStack[];



//To make an altar recipe, simply lay the items out visually on this grid like they are ingame.
//then, fill in the spaces with a slash, three asterisks, and then a slash
//I cannot add that here since it will mess up the comments.
/*
[
    null,null,     null,null,
    null,null,null,null,null,
         null,null,null,
    null,null,null,null,null,
    null,null,     null,null,
],
*/



val astralworkbenchInputs = [
[
    null,null,/***/null,null,
    null,null,null,null,null,
    /***/null,null,null,/***/
    <botania:livingrock>,<botania:manaresource:7>,<minecraft:redstone>,<botania:manaresource:7>,<botania:livingrock>,
    <botania:livingrock>,<botania:livingrock>,/***/<botania:livingrock>,<botania:livingrock>,
],
[
    null,null,/***/null,null,
    null,null,null,null,null,
    /***/<minecraft:blaze_rod>,<botania:manaresource:15>,<minecraft:blaze_rod>,/***/
    <minecraft:prismarine:2>,<botania:manaresource:7>,<botania:storage>,<botania:manaresource:7>,<minecraft:prismarine:2>,
    <minecraft:prismarine:2>,<minecraft:prismarine:2>,/***/<minecraft:prismarine:2>,<minecraft:prismarine:2>,
],
[
    <botania:livingwood>,<botania:livingwood>,/***/<botania:livingwood>,<botania:livingwood>,
    <botania:livingwood>,null,<minecraft:emerald>,null,<botania:livingwood>,
    /***/<minecraft:emerald>,<botania:pylon>,<minecraft:emerald>,/***/
    <botania:livingwood>,null,<minecraft:ender_eye>,null,<botania:livingwood>,
    <botania:livingwood>,<botania:livingwood>,/***/<botania:livingwood>,<botania:livingwood>,
],
[
    null,null,/***/null,null,
    null,null,null,null,null,
    /***/null,<botania:manaresource:8>,null,/***/
    <botania:manaresource:7>,<botania:manaresource:7>,<minecraft:obsidian>,<botania:manaresource:7>,<botania:manaresource:7>,
    <botania:manaresource:7>,<botania:manaresource:7>,/***/<botania:manaresource:7>,<botania:manaresource:7>,
],
[
    <minecraft:leather>,<minecraft:leather>,/***/<minecraft:leather>,<minecraft:leather>,
    <botania:dreamwood>,<botania:dreamwood>,null,<botania:dreamwood>,<botania:dreamwood>,
    /***/<botania:dreamwood>,<botania:manaresource:7>,<botania:dreamwood>,/***/
    <botania:dreamwood>,<botania:dreamwood>,null,<botania:dreamwood>,<botania:dreamwood>,
    <minecraft:leather>,<minecraft:leather>,/***/<minecraft:leather>,<minecraft:leather>,
],
[
    <botania:dreamwood:1>,null,/***/null,<botania:dreamwood:1>,
    <botania:dreamwood:1>,null,<minecraft:hopper>,null,<botania:dreamwood:1>,
    /***/<botania:dreamwood:1>,<minecraft:crafting_table>,<botania:dreamwood:1>,/***/
    <botania:dreamwood:1>,null,<botania:dreamwood:1>,null,<botania:dreamwood:1>,
    <botania:dreamwood:1>,<botania:dreamwood:1>,/***/<botania:dreamwood:1>,<botania:dreamwood:1>,
],
[
    null,null,/***/null,null,
    null,null,null,null,null,
    /***/null,null,null,/***/
    <botania:dreamwood>,<botania:dreamwood>,<botania:lightrelay>,<botania:dreamwood>,<botania:dreamwood>,
    <botania:dreamwood>,<botania:dreamwood>,/***/<botania:dreamwood>,<botania:dreamwood>,
],
[
    <botania:livingrock>,<botania:livingrock>,/***/<botania:livingrock>,<botania:livingrock>,
    <botania:livingrock>,<minecraft:gunpowder>,<botania:manaresource:8>,<minecraft:gunpowder>,<botania:livingrock>,
    /***/<botania:manaresource:7>,<botania:alchemycatalyst>,<botania:manaresource:7>,/***/
    <botania:livingrock>,<minecraft:gunpowder>,<botania:manaresource:7>,<minecraft:gunpowder>,<botania:livingrock>,
    <botania:livingrock>,<botania:livingrock>,/***/<botania:livingrock>,<botania:livingrock>,
],
[
    <botania:dreamwood>,<botania:dreamwood>,/***/<botania:dreamwood>,<botania:dreamwood>,
    <botania:dreamwood>,null,null,null,<botania:dreamwood>,
    /***/null,<botania:spreader>,null,/***/
    <botania:dreamwood>,null,null,null,<botania:dreamwood>,
    <botania:dreamwood>,<botania:dreamwood>,/***/<botania:dreamwood>,<botania:dreamwood>,
],
[
    null,<botania:manaresource:8>,/***/<botania:manaresource:8>,null,
    null,null,null,null,null,
    /***/null,<botania:platform>,null,/***/
    null,null,null,null,null,
    null,<botania:manaresource:8>,/***/<botania:manaresource:8>,null,
],
[
    null,<minecraft:prismarine_shard>,/***/<minecraft:prismarine_shard>,null,
    null,<minecraft:glass>,null,<minecraft:glass>,null,
    /***/<minecraft:glass>,<botania:platform:1>,<minecraft:glass>,/***/
    null,<minecraft:glass>,null,<minecraft:glass>,null,
    null,<minecraft:prismarine_shard>,/***/<minecraft:prismarine_shard>,null,
],
[
    <botania:livingwood>,<botania:livingwood>,/***/<botania:livingwood>,<botania:livingwood>,
    <botania:livingwood>,<minecraft:emerald>,null,<minecraft:emerald>,<botania:livingwood>,
    /***/null,null,null,/***/
    <botania:livingwood>,<minecraft:emerald>,<minecraft:flint_and_steel>,<minecraft:emerald>,<botania:livingwood>,
    <botania:livingwood>,<botania:livingwood>,/***/<botania:livingwood>,<botania:livingwood>,
],
] as IIngredient[][];



val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar1",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar2",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar3",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar4",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar5",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar6",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar7",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar8",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar9",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar10",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar11",
    "tungstenmagic:shaped/internal/altar/seniorbotaniaaltar12",
] as string[];



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