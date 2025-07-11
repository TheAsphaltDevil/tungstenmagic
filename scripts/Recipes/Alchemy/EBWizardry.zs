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

This file contains the crucible recipes for Electroblob's Wizardry.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/


val crucibleOutPuts =[
    <ebwizardry:spectral_dust:1>,
    <ebwizardry:spectral_dust:2>,
    <ebwizardry:spectral_dust:3>,
    <ebwizardry:spectral_dust:4>,
    <ebwizardry:spectral_dust:5>,
    <ebwizardry:spectral_dust:6>,
    <ebwizardry:spectral_dust:7>,
    <ebwizardry:magic_crystal>,
    <ebwizardry:grand_crystal>,
    <ebwizardry:magic_silk>,
    <ebwizardry:astral_diamond>,
    <ebwizardry:resplendent_thread>,
] as IItemStack[];

val crucibleInputs =[
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:quartz>,
    <ebwizardry:magic_crystal>,
    <minecraft:carpet>,
    <minecraft:diamond>,
    <ebwizardry:magic_silk>
] as IItemStack[];

val crucibleAspects = [
    [<aspect:ignis>*5],
    [<aspect:gelum>*5],
    [<aspect:potentia>*5],
    [<aspect:vitium>*5],
    [<aspect:terra>*5],
    [<aspect:sensus>*5],
    [<aspect:victus>*5],
    [<aspect:auram>*1],
    [<aspect:auram>*1],
    [<aspect:praecantatio>*15],
    [<aspect:desiderium>*80],
    [<aspect:praecantatio>*80]
] as CTAspectStack[][];

val crucibleNames = [
    "eb1",
    "eb2",
    "eb3",
    "eb4",
    "eb5",
    "eb6",
    "eb7",
    "crystal",
    "bigCrystal",
    "fabric",
    "astralDiamond",
    "resplendentthread"
] as string[];

val crucibleKeys = [
    "SPECTRALDUST@2",
    "SPECTRALDUST@2",
    "SPECTRALDUST@2",
    "SPECTRALDUST@2",
    "SPECTRALDUST@2",
    "SPECTRALDUST@2",
    "SPECTRALDUST@2",
    "EBCRYSTALS@2",
    "EBCRYSTALS@2",
    "MAGICALSILK@2",
    "ASTRALDIAMOND@2",
    "ROBECLASSES@2"
] as string[];


for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}
