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
(junior year) recipes for embers.

*****************************************/


//Recipes that yield more than one of an item must be explicitly removed, 1 by 1. Uncomment (remove the /* and the */) this code block if you have any such recipes.
recipes.remove(<embers:ember_pulser>, false);
recipes.remove(<embers:ember_funnel>, false);
recipes.remove(<embers:beam_splitter>, false);



//The outputs of the recipes. Items put in this list will have their existing recipes automatically removed. See below.


val astralOutputs = [
    <mystgears:mechanical_turret>,
    <embers:charger>,
    <embers:dawnstone_anvil>,
    <embers:ember_pulser>*2,
    <embers:ember_funnel>*2,
    <embers:reaction_chamber>,
    <embers:mixer>,
    <mystgears:ember_gatling_gun>,
    <embers:crystal_cell>,
    <embers:beam_splitter>*3,
    <embers:ember_siphon>,
] as IItemStack[];



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

val astralworkbenchInputs = [
    [
        null,null,/***/null,null,
        null,<minecraft:saddle>,null,null,null,
        /***/<embers:block_caminite_brick>,<embers:block_dawnstone>,<mysticalmechanics:gearbox_frame>,/***/
        null,<embers:block_caminite_brick>,<embers:ember_siphon>,<mysticalmechanics:gearbox_frame>,null,
        <embers:block_caminite_brick>,<embers:block_caminite_brick>,/***/<embers:block_caminite_brick>,<embers:block_caminite_brick>,
    ],
    [
        null,null,/***/null,null,
        null,<embers:ingot_lead>,<embers:ingot_lead>,<embers:ingot_lead>,null,
        /***/<embers:ingot_copper>,null,<embers:ingot_copper>,/***/
        null,<embers:ingot_copper>,<embers:ingot_dawnstone>,<embers:ingot_copper>,null,
        null,<thaumcraft:plate:1>,/***/<thaumcraft:plate:1>,null,
    ],
    [
        null,null,/***/null,null,
        <embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>,<embers:block_dawnstone>,
        /***/<embers:brick_caminite>,<embers:block_dawnstone>,<embers:brick_caminite>,/***/
        null,<embers:block_caminite_brick>,<embers:block_caminite_brick>,<embers:block_caminite_brick>,null,
        null,<embers:block_caminite_brick>,/***/<embers:block_caminite_brick>,null,
    ],
    [
        null,null,/***/null,null,
        null,null,null,null,null,
        /***/null,null,null,/***/
        null,<embers:plate_dawnstone>,<embers:ember_emitter>,<embers:plate_dawnstone>,null,
        null,<thaumcraft:mechanism_simple>,/***/<thaumcraft:mechanism_simple>,null,
    ],
    [
        null,null,/***/null,null,
        null,null,null,null,null,
        /***/null,null,null,/***/
        null,<embers:plate_dawnstone>,<embers:ember_receiver>,<embers:plate_dawnstone>,null,
        null,<embers:plate_dawnstone>,/***/<embers:plate_dawnstone>,null,
    ],
    [
        null,null,/***/null,null,
        null,<embers:plate_bronze>,<embers:plate_bronze>,<embers:plate_bronze>,null,
        /***/<embers:plate_bronze>,null,<embers:plate_bronze>,/***/
        null,<embers:plate_bronze>,<embers:plate_bronze>,<embers:plate_bronze>,null,
        null,<embers:spark_plug>,/***/<embers:spark_plug>,null,
    ],
    [
        null,null,/***/null,null,
        null,<embers:plate_lead>,<embers:block_tank>,<embers:plate_lead>,null,
        /***/<embers:plate_lead>,<thaumcraft:mechanism_complex>,<embers:plate_lead>,/***/
        null,<embers:plate_lead>,<embers:block_tank>,<embers:plate_lead>,null,
        <embers:brick_caminite>,<embers:brick_caminite>,/***/<embers:brick_caminite>,<embers:brick_caminite>,
    ],
    [
        null,null,/***/null,null,
        <thaumcraft:plate:1>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:plate_dawnstone>,
        /***/<thaumcraft:plate:1>,<ebwizardry:magic_crystal>,null,/***/
        <thaumcraft:plate:1>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:ingot_dawnstone>,<embers:plate_dawnstone>,
        null,null,/***/null,null,
    ],
    [
        null,null,/***/null,null,
        null,null,null,null,null,
        /***/<embers:plate_dawnstone>,<ebwizardry:magic_crystal>,<embers:plate_dawnstone>,/***/
        null,<embers:block_copper>,<embers:plate_dawnstone>,<embers:block_copper>,null,
        <embers:brick_caminite>,<embers:brick_caminite>,/***/<embers:brick_caminite>,<embers:brick_caminite>,
    ],
    [
        null,null,/***/null,null,
        <embers:plate_lead>,<embers:plate_lead>,<embers:plate_lead>,<embers:plate_lead>,<embers:plate_lead>,
        /***/<embers:ingot_copper>,<thaumcraft:mirrored_glass>,<embers:ingot_copper>,/***/
        <embers:plate_lead>,<embers:plate_lead>,<embers:plate_lead>,<embers:plate_lead>,<embers:plate_lead>,
        null,null,/***/null,null,
    ],
    [
        null,null,/***/null,null,
        null,null,null,null,null,
        /***/<embers:plate_lead>,<thaumcraft:mechanism_simple>,<embers:plate_lead>,/***/
        null,<embers:plate_lead>,<embers:plate_copper>,<embers:plate_lead>,null,
        <embers:brick_caminite>,<embers:brick_caminite>,/***/<embers:brick_caminite>,<embers:brick_caminite>,
    ],
] as IIngredient[][];



val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/juniorembers1",
    "tungstenmagic:shaped/internal/altar/juniorembers2",
    "tungstenmagic:shaped/internal/altar/juniorembers3",
    "tungstenmagic:shaped/internal/altar/juniorembers4",
    "tungstenmagic:shaped/internal/altar/juniorembers5",
    "tungstenmagic:shaped/internal/altar/juniorembers6",
    "tungstenmagic:shaped/internal/altar/juniorembers7",
    "tungstenmagic:shaped/internal/altar/juniorembers8",
    "tungstenmagic:shaped/internal/altar/juniorembers9",
    "tungstenmagic:shaped/internal/altar/juniorembers10",
    "tungstenmagic:shaped/internal/altar/juniorembers11",
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