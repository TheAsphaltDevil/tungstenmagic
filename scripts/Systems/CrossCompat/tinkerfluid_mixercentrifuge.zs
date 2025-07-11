import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.embers.Mixer;



/*********************************************************

This file adds the ability to make tinkers' alloys in
the embers mixer centrifuge.

*********************************************************/

mods.embers.Mixer.add(<liquid:obsidian>*36, [
    <liquid:water>*125,
    <liquid:lava>*125
]);
mods.embers.Mixer.add(<liquid:clay>*144, [
    <liquid:water>*250,
    <liquid:stone>*72,
    <liquid:dirt>*144
]);
mods.embers.Mixer.add(<liquid:knightslime>*72, [
    <liquid:iron>*72,
    <liquid:purpleslime>*125,
    <liquid:stone>*144
]);
mods.embers.Mixer.add(<liquid:pigiron>*144, [
    <liquid:iron>*144,
    <liquid:blood>*40,
    <liquid:clay>*72
]);
mods.embers.Mixer.add(<liquid:manyullyn>*2, [
    <liquid:cobalt>*2,
    <liquid:ardite>*2
]);
mods.embers.Mixer.add(<liquid:alubrass>*4, [
    <liquid:aluminum>*3,
    <liquid:copper>
]);