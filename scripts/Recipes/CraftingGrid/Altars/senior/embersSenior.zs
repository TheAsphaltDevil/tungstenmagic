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
(senior year) recipes for embers.

*****************************************/

mods.embers.Alchemy.remove(<embers:catalytic_plug>);
mods.embers.Alchemy.remove(<soot:alchemy_globe>);
mods.embers.Alchemy.remove(<embers:ember_pipe>);



//The outputs of the recipes. Items put in this list will have their existing recipes automatically removed. See below.
val astralOutputs = [
    <embers:alchemy_tablet>,
    <embers:alchemy_pedestal>,
    <embers:catalytic_plug>,
    <soot:ember_burst>,
    <embers:field_chart>,
    <embers:ember_pipe>*20,
    <embers:reactor>,
    <embers:combustor>,
    <embers:catalyzer>,
    <embers:beam_cannon>,
    <soot:alchemy_globe>,
] as IItemStack[];



//To make an altar recipe, simply lay the items out visually on this grid like they are ingame.
/*
[
    null,null,null,null,null,
    null,null,null,null,null,
    null,null,null,null,null,
    null,null,null,null,null,
    null,null,null,null,null,
],
*/



val astralworkbenchInputs = [
[
    null,null,<embers:plate_dawnstone>,null,null,
    null,<embers:brick_caminite>,<embers:brick_caminite>,<embers:brick_caminite>,null,
    <embers:plate_dawnstone>,<embers:brick_caminite>,<embers:plate_dawnstone>,<embers:brick_caminite>,<embers:plate_dawnstone>,
    null,<embers:brick_caminite>,<embers:brick_caminite>,<embers:brick_caminite>,null,
    null,null,<embers:plate_dawnstone>,null,null,
],
[
    null,null,null,null,null,
    null,<embers:plate_dawnstone>,null,<embers:plate_dawnstone>,null,
    null,<embers:brick_caminite>,<embers:plate_copper>,<embers:brick_caminite>,null,
    null,<embers:brick_caminite>,<embers:plate_copper>,<embers:brick_caminite>,null,
    null,<embers:brick_caminite>,<embers:brick_caminite>,<embers:brick_caminite>,null,
],
[
    null,null,<minecraft:glass_pane>,null,null,
    null,<minecraft:iron_ingot>,<embers:pipe>,<minecraft:iron_ingot>,null,
    <minecraft:glass_pane>,<embers:pipe>,<embers:mech_core>,<embers:pipe>,<minecraft:glass_pane>,
    null,<minecraft:iron_ingot>,<embers:pipe>,<minecraft:iron_ingot>,null,
    null,null,<minecraft:glass_pane>,null,null,
],
[
    null,null,<embers:plate_dawnstone>,null,null,
    null,<embers:plate_dawnstone>,<embers:ingot_lead>,<embers:plate_dawnstone>,null,
    null,null,<thaumcraft:mirrored_glass>,null,null,
    null,null,<embers:ingot_copper>,null,null,
    null,null,<embers:block_caminite_brick>,null,null,
],
[
    <embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,
    <embers:archaic_brick>,<embers:archaic_brick>,<embers:ember_gauge>,<embers:archaic_brick>,<embers:archaic_brick>,
    <embers:archaic_brick>,<embers:archaic_brick>,<thaumcraft:dioptra>,<embers:archaic_brick>,<embers:archaic_brick>,
    <embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,
    <embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,
],
[
    null,null,null,null,null,
    <embers:ingot_silver>,null,null,null,<embers:ingot_silver>,
    <embers:ingot_silver>,<embers:ingot_bronze>,<embers:wildfire_core>,<embers:ingot_bronze>,<embers:ingot_silver>,
    <embers:ingot_silver>,null,null,null,<embers:ingot_silver>,
    null,null,null,null,null,
],
[
    null,null,null,null,null,
    null,<embers:plate_copper>,null,<embers:plate_copper>,null,
    <embers:item_pipe>,<ebwizardry:grand_crystal>,<embers:wildfire_core>,<ebwizardry:grand_crystal>,<embers:item_pipe>,
    <embers:plate_lead>,<embers:spark_plug>,<embers:plate_lead>,<embers:spark_plug>,<embers:plate_lead>,
    <embers:brick_caminite>,<embers:brick_caminite>,<embers:brick_caminite>,<embers:brick_caminite>,<embers:brick_caminite>,
],
[
    null,null,null,null,null,
    null,null,<embers:ingot_copper>,null,null,
    null,<embers:plate_copper>,<ebwizardry:grand_crystal>,<embers:plate_copper>,null,
    null,<embers:plate_copper>,<embers:mech_core>,<embers:plate_copper>,null,
    null,<embers:block_caminite_brick_slab>,<embers:block_caminite_brick_slab>,<embers:block_caminite_brick_slab>,null,
],
[
    null,null,null,null,null,
    null,null,<embers:ingot_silver>,null,null,
    null,<embers:plate_silver>,<ebwizardry:grand_crystal>,<embers:plate_silver>,null,
    null,<embers:plate_silver>,<embers:mech_core>,<embers:plate_silver>,null,
    null,<embers:block_caminite_brick_slab>,<embers:block_caminite_brick_slab>,<embers:block_caminite_brick_slab>,null,
],
[
    null,null,null,null,null,
    <embers:ingot_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,
    <embers:block_caminite_brick>,<ebwizardry:magic_crystal>,<ebwizardry:magic_crystal>,<ebwizardry:magic_crystal>,null,
    <embers:ingot_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,
    null,null,null,null,null,
],
[
    null,null,<embers:aspectus_lead>,null,null,
    null,<minecraft:glass>,<minecraft:glass>,<minecraft:glass>,null,
    null,<minecraft:glass>,null,<minecraft:glass>,null,
    null,<minecraft:glass>,<minecraft:glass>,<minecraft:glass>,null,
    null,<embers:ingot_lead>,<embers:archaic_circuit>,<embers:ingot_lead>,null,
],
] as IIngredient[][];



val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/seniorembers1",
    "tungstenmagic:shaped/internal/altar/seniorembers2",
    "tungstenmagic:shaped/internal/altar/seniorembers3",
    "tungstenmagic:shaped/internal/altar/seniorembers4",
    "tungstenmagic:shaped/internal/altar/seniorembers5",
    "tungstenmagic:shaped/internal/altar/seniorembers6",
    "tungstenmagic:shaped/internal/altar/seniorembers7",
    "tungstenmagic:shaped/internal/altar/seniorembers8",
    "tungstenmagic:shaped/internal/altar/seniorembers9",
    "tungstenmagic:shaped/internal/altar/seniorembers10",
    "tungstenmagic:shaped/internal/altar/seniorembers11",
] as string[];






//Registration of the recipes. astralWorkbenchNames, astralOutputs, and astralworkbenchInputs must have the same number of entries for this script to work.
for z, item in astralOutputs {

    //Althogh this script lets you lay out the recipes visually, the actual slot order used internally is different, as seen here:
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
