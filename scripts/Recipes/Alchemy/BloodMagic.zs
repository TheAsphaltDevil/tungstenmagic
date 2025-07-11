import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;



//The_AsphaltDevil
/********************************************************

This file contains the crucible recipes for Blood Magic.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/


val crucibleOutPuts =[
    <bloodmagic:blood_rune:1>,
    <bloodmagic:blood_rune:2>,
    <bloodmagic:blood_rune:3>,
    <bloodmagic:blood_rune:4>,
    <bloodmagic:blood_rune:5>,
    <bloodmagic:blood_rune:6>,
    <bloodmagic:blood_rune:7>,
    <bloodmagic:blood_rune:8>,
    <bloodmagic:blood_rune:9>,
    <bloodmagic:blood_rune:10>,
    <bloodmagic:soul_snare>,
    <bloodmagic:ritual_controller>,
    <bloodmagic:blood_rune>,
    <bloodmagic:ritual_stone>,
] as IItemStack[];

val crucibleInputs =[
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <bloodmagic:blood_rune>,
    <minecraft:string>,
    <bloodmagic:ritual_stone>,
    <minecraft:stone>,
    <minecraft:stone>,
] as IItemStack[];

val crucibleAspects = [
    [<aspect:motus>*3],
    [<aspect:ordo>*3],
    [<aspect:mortuus>*3],
    [<aspect:spiritus>*3],
    [<aspect:aqua>*3],
    [<aspect:aer>*3],
    [<aspect:vacuos>*3],
    [<aspect:victus>*3],
    [<aspect:permutatio>*3],
    [<aspect:potentia>*3],
    [<aspect:vinculum>*3, <aspect:spiritus>*3],
    [<aspect:praecantatio>*10],
    [<aspect:victus>],
    [<aspect:victus>, <aspect:praecantatio>]
] as CTAspectStack[][];

val crucibleNames = [
    "rune1",
    "rune2",
    "rune3",
    "rune4",
    "rune5",
    "rune6",
    "rune7",
    "rune8",
    "rune9",
    "rune10",
    "bmSnare",
    "masterRitualStone",
    "bmBlankRune",
    "ritualstone",
] as string[];

val crucibleKeys = [
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BLOODALTARTWO@2",
    "BMSNARE@2",
    "BLOODRITUALS@2",
    "BLOODALTARTWO@2",
    "BLOODRITUALS@2"
] as string[];


for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}
