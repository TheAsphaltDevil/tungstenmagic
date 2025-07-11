import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.SalisMundus;

//The_AsphaltDevil
/********************************************************

This file contains all salis mundus conversion recipes.

//SalisMundus.addSingleConversion(<blockstate:minecraft:dirt>.block, <minecraft:bedrock>);
********************************************************/

SalisMundus.addSingleConversion(<blockstate:minecraft:flower_pot>.block, <ebwizardry:receptacle>);


//Convert between quark candles and thaumcraft candles with salis mundus
val quarkCandles = [
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
val thaumcraftCandles = [
    <thaumcraft:candle_white>,
    <thaumcraft:candle_orange>,
    <thaumcraft:candle_magenta>,
    <thaumcraft:candle_lightblue>,
    <thaumcraft:candle_yellow>,
    <thaumcraft:candle_lime>,
    <thaumcraft:candle_pink>,
    <thaumcraft:candle_gray>,
    <thaumcraft:candle_silver>,
    <thaumcraft:candle_cyan>,
    <thaumcraft:candle_purple>,
    <thaumcraft:candle_blue>,
    <thaumcraft:candle_brown>,
    <thaumcraft:candle_green>,
    <thaumcraft:candle_red>,
    <thaumcraft:candle_black>
] as IItemStack[];
for z, item in quarkCandles {
    SalisMundus.addSingleConversion(quarkCandles[z], thaumcraftCandles[z]);
    SalisMundus.addSingleConversion(thaumcraftCandles[z], quarkCandles[z]);
}