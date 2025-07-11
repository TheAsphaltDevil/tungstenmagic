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

This file contains the crucible recipes for Embers, Soot, and Mystical Mechanics.

//mods.thaumcraft.Crucible.registerRecipe("name", "key[@x]", output, input, [aspects]);
********************************************************/

val crucibleOutPuts = [
    <embers:blend_caminite>,
    <embers:aspectus_copper>,
    <embers:aspectus_dawnstone>,
    <embers:aspectus_iron>,
    <embers:aspectus_silver>,
    <embers:aspectus_lead>,
    <contenttweaker:aspectus_terra>
] as IItemStack[];

val crucibleInputs =[
    <minecraft:clay_ball>,
    <ebwizardry:crystal_shard>,
    <ebwizardry:crystal_shard>,
    <ebwizardry:crystal_shard>,
    <ebwizardry:crystal_shard>,
    <ebwizardry:crystal_shard>,
    <ebwizardry:crystal_shard>
] as IItemStack[];

val crucibleAspects = [
    [<aspect:machina>],
    [<aspect:aer>*250],
    [<aspect:ignis>*250],
    [<aspect:perditio>*250],
    [<aspect:ordo>*250],
    [<aspect:aqua>*250],
    [<aspect:terra>*250]
] as CTAspectStack[][];

val crucibleNames = [
    "caminite",
    "aeraspectus",
    "ignisaspectus",
    "perditioaspectus",
    "ordoaspectus",
    "aquaaspectus",
    "terraaspectus",
] as string[];

val crucibleKeys = [
    "CAMINITE@2",
    "METALASPECTI@2",
    "METALASPECTI@2",
    "METALASPECTI@2",
    "METALASPECTI@2",
    "METALASPECTI@2",
    "METALASPECTI@2",
] as string[];

for i, item in crucibleOutPuts {
    mods.thaumcraft.Crucible.registerRecipe(crucibleNames[i], crucibleKeys[i], crucibleOutPuts[i], crucibleInputs[i], crucibleAspects[i]);
}