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

This file contains the crucible recipes for botania.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/

val crucibleOutPuts =[
    <botania:flower>,
    <botania:flower:1>,
    <botania:flower:2>,
    <botania:flower:3>,
    <botania:flower:4>,
    <botania:flower:5>,
    <botania:flower:6>,
    <botania:flower:7>,
    <botania:flower:8>,
    <botania:flower:9>,
    <botania:flower:10>,
    <botania:flower:11>,
    <botania:flower:12>,
    <botania:flower:13>,
    <botania:flower:14>,
    <botania:flower:15>,
    <botania:livingrock>,
    <botania:livingwood>
] as IItemStack[];

val crucibleInputs =[
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:yellow_flower>,
    <minecraft:stone>,
    <minecraft:log>
] as IItemStack[];

val crucibleAspects = [
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:herba>*5, <aspect:sensus>*5, <aspect:victus>],
[<aspect:victus>*3],
[<aspect:victus>*5]
] as CTAspectStack[][];

val crucibleNames = [
"flower1",
"flower2",
"flower3",
"flower4",
"flower5",
"flower6",
"flower7",
"flower8",
"flower9",
"flower10",
"flower11",
"flower12",
"flower13",
"flower14",
"flower15",
"flower16",
"livingrock",
"livingwood"
] as string[];

val crucibleKeys = [
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "MYSTICALFLOWERS@2",
    "LIVINGROCKANDLIVINGWOOD",
    "LIVINGROCKANDLIVINGWOOD"
] as string[];


for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}