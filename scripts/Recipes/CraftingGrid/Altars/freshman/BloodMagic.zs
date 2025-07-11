import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;

import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.astralsorcery.Altar;




/**************************************************

In this file are all the recipes for
freshman year (luminous table and arcane workbench)
for Blood Magic.

You only need one set of inputs and outputs. The
script will handle adding them to both crafting
tables for you.

**************************************************/

//The list of output items for each recipe.


val workbenchOutputs = [
    <bloodmagic:altar>,
    <bloodmagic:soul_forge>
] as IItemStack[];


//Crafting items can be arranged visually as they appear in game, like so:

/*
    [
        null, null, null,
        null, null, null,
        null, null, null,
    ]
*/


val workbenchInputs = [
    [
        <minecraft:stone>, null, <minecraft:stone>,
        <minecraft:stone>, <minecraft:furnace>, <minecraft:stone>,
        <minecraft:gold_ingot>, <minecraft:soul_sand>, <minecraft:gold_ingot>,
    ],
    [
        <minecraft:iron_ingot>, null, <minecraft:iron_ingot>,
        <minecraft:stone>, <minecraft:gold_ingot>, <minecraft:stone>,
        <minecraft:stone>, <minecraft:iron_block>, <minecraft:stone>,
    ]
] as IIngredient[][];



val workbenchNames = [
    "bloodmagicaltar1",
    "bloodmagicHellfireForge"
] as string[];




val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/bloodmagicaltar1",
    "tungstenmagic:shaped/internal/altar/hellfireforge"
] as string[];



val workbenchKeys = [
    "",
    ""
] as string[];



for i, item in workbenchInputs {

    mods.astralsorcery.Altar.addDiscoveryAltarRecipe(astralworkbenchNames[i], workbenchOutputs[i], 200, 200, workbenchInputs[i]);

    //This codeblock converts luminous crafting table formatting to arcane workbench formatting.
    val tempArray = [
        [workbenchInputs[i][0],workbenchInputs[i][1],workbenchInputs[i][2]],
        [workbenchInputs[i][3],workbenchInputs[i][4],workbenchInputs[i][5]],
        [workbenchInputs[i][6],workbenchInputs[i][7],workbenchInputs[i][8]],
    ] as IIngredient[][];

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(workbenchNames[i], workbenchKeys[i], 5, [<aspect:aer>*2, <aspect:ignis>*2, <aspect:ordo>*2], workbenchOutputs[i], tempArray);
}