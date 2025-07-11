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

This file contains the infusion recipes for nnnnnnnnn.

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
//mods.thaumcraft.Infusion.registerRecipe("name", "key[@x]", output, instability, [aspects], Item, recipe);
********************************************************/


val infusionOutputs =[
    <ebwizardry:magic_wand>,
    <ebwizardry:novice_fire_wand>,
    <ebwizardry:novice_ice_wand>,
    <ebwizardry:novice_lightning_wand>,
    <ebwizardry:novice_necromancy_wand>,
    <ebwizardry:novice_earth_wand>.withTag({}),
    <ebwizardry:novice_sorcery_wand>.withTag({}),
    <ebwizardry:novice_healing_wand>.withTag({}),
    <ebwizardry:arcane_workbench>,
    <ebwizardry:crystal_silver_plating>,
    <ebwizardry:ethereal_crystalweave>,
] as IItemStack[];

val infusionInputs =[
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:stick>,
    <minecraft:crafting_table>,
    <ebwizardry:magic_silk>,
    <ebwizardry:magic_silk>
] as IItemStack[];

val infusionSides =[
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:1>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:2>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:3>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:4>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:5>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:6>],
    [<minecraft:gold_nugget>,<ebwizardry:magic_crystal:7>],
    [<minecraft:book>,<minecraft:book>,<minecraft:book>,<minecraft:book>,<minecraft:book>],
    [<embers:plate_silver>,<ebwizardry:grand_crystal>],
    [<ebwizardry:grand_crystal>,<ebwizardry:grand_crystal>]
] as IIngredient[][];

val infusionAspects = [
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*100],
[<aspect:praecantatio>*80],
[<aspect:praecantatio>*80]
] as CTAspectStack[][];

val infusionNames = [
    "ieb1",
    "ieb2",
    "ieb3",
    "ieb4",
    "ieb5",
    "ieb6",
    "ieb7",
    "ieb8",
    "ebarcanebench",
    "crystalplating",
    "crystalweave"
] as string[];

val infusionKeys = [
    "EBARCANEWORKBENCH@3",
    "ELEMENTALCRYSTALS@2",
    "ELEMENTALCRYSTALS@2",
    "ELEMENTALCRYSTALS@2",
    "ELEMENTALCRYSTALS@2",
    "ELEMENTALCRYSTALS@2",
    "ELEMENTALCRYSTALS@2",
    "ELEMENTALCRYSTALS@2",
    "EBARCANEWORKBENCH@2",
    "ROBECLASSES@2",
    "ROBECLASSES@2"
] as string[];

val instabilities = [
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5
] as int[];

for k, item in infusionOutputs {
    mods.thaumcraft.Infusion.registerRecipe(infusionNames[k], infusionKeys[k], infusionOutputs[k], instabilities[k], infusionAspects[k], infusionInputs[k], infusionSides[k]);
}
