import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
//The_AsphaltDevil

/****************************************************

This file contains all miscellaneous/one-off recipe

changes/additions  that don't quite fit elsewhere.

****************************************************/

//Dye any dragon scale
val dyes = [
    <ore:dyeRed>,
    <ore:dyeGreen>,
    <ore:dyeOrange>,
    <ore:dyeGray>,
    <ore:dyeLightBlue>,
    <ore:dyeWhite>,
    <ore:dyeBlue>,
    <ore:dyeLightGray>
] as IIngredient[];
val dragonScales = [
    <iceandfire:dragonscales_red>,
    <iceandfire:dragonscales_green>,
    <iceandfire:dragonscales_bronze>,
    <iceandfire:dragonscales_gray>,
    <iceandfire:dragonscales_blue>,
    <iceandfire:dragonscales_white>,
    <iceandfire:dragonscales_sapphire>,
    <iceandfire:dragonscales_silver>
] as IItemStack[];
for z, item in dragonScales {
    for p, item in dragonScales{
        recipes.addShapeless(null, dragonScales[z],[dyes[z],dragonScales[p]],null,null);
    }
}


//Dye any quark candle
val dyesQuarkCandles = [
    <ore:dyeWhite>,
    <ore:dyeOrange>,
    <ore:dyeMagenta>,
    <ore:dyeLightBlue>,
    <ore:dyeYellow>,
    <ore:dyeLime>,
    <ore:dyePink>,
    <ore:dyeGray>,
    <ore:dyeLightGray>,
    <ore:dyeCyan>,
    <ore:dyePurple>,
    <ore:dyeBlue>,
    <ore:dyeBrown>,
    <ore:dyeGreen>,
    <ore:dyeRed>,
    <ore:dyeBlack>
] as IIngredient[];
val quarkCandlesDye = [
    <quark:candle>,
    <quark:candle:1>,
    <quark:candle:2>,
    <quark:candle:3>,
    <quark:candle:4>,
    <quark:candle:5>,
    <quark:candle:6>,
    <quark:candle:7>,
    <quark:candle:8>,
    <quark:candle:9>,
    <quark:candle:10>,
    <quark:candle:11>,
    <quark:candle:12>,
    <quark:candle:13>,
    <quark:candle:14>,
    <quark:candle:15>
] as IItemStack[];
for f, item in dyesQuarkCandles {
    for g, item in dyesQuarkCandles{
        recipes.addShapeless(null, quarkCandlesDye[f],[dyesQuarkCandles[f],quarkCandlesDye[g]],null,null);
    }
}






//VANILLA CRAFTING SHAPELESS
//recipes.addShapeless(name,output,inputs,function,action)


val mechUserInputs = [
    <thaumcraft:mind>,
    <minecraft:dispenser>,
    <minecraft:lever>
] as IItemStack[];
recipes.addShapeless(null,<extrautils2:user>,mechUserInputs,null,null);

val mechMinerInputs = [
    <minecraft:iron_pickaxe>,
    <thaumcraft:mind>,
    <minecraft:dispenser>
] as IItemStack[];
recipes.addShapeless(null,<extrautils2:miner>,mechMinerInputs,null,null);

val rareTreasureInputs = [
    <astralsorcery:itemfragmentcapsule>
] as IItemStack[];
recipes.addShapeless(null,<thaumcraft:loot_bag:2>,rareTreasureInputs,null,null);



//VANILLA CRAFTING SHAPED
/******************************************************
val inputs = [
    [null,null,null],
    [null,null,null],
    [null,null,null]
]
recipes.addShaped(null,output,inputs,null,null);

Simply use itemstacks to draw out the recipe.
Null represents an empty slot.
******************************************************/

val sapphireKeyInputs = [
    [null,<treasure2:gold_key>,<treasure2:treasure_tool>],
    [null,<minecraft:glowstone_dust>,null],
    [null,<iceandfire:sapphire_gem>,null],
] as IItemStack[][];
recipes.addShaped(null,<treasure2:sapphire_key>,sapphireKeyInputs,null,null);

//Void Metal
recipes.remove(<thaumcraft:ingot:1>, false);
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:1>);

mods.thaumcraft.Infusion.registerRecipe("newvoidmetal", "BASEELDRITCH", <thaumcraft:ingot:1>, 10, [<aspect:vitium>*100,<aspect:vacuos>*100], <thaumcraft:void_seed>, [<embers:wildfire_core>, <bloodmagic:item_demon_crystal>, <tconstruct:ingots:2>, <thaumcraft:bottle_taint>, <botania:manaresource:4>, <arcanearchives:raw_quartz>, <astralsorcery:itemcelestialcrystal>]);


<embers:aspectus_copper>.displayName = "Aer Aspectus";
<embers:aspectus_dawnstone>.displayName = "Ignis Aspectus";
<embers:aspectus_iron>.displayName = "Perditio Aspectus";
<embers:aspectus_silver>.displayName = "Ordo Aspectus";
<embers:aspectus_lead>.displayName = "Aqua Aspectus";