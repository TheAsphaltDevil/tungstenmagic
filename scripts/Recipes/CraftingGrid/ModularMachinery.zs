
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;



//ARCANE WORKBENCH
//mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[] input);
//mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("name", "", vis, [aspects], output, [inputs]);

mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("mfluidout", "MODULARIUM@2", 50, [<aspect:perditio>], <modularmachinery:blockfluidoutputhatch:2>, [<modularmachinery:blockcasing>,<minecraft:dispenser>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("mfluidin", "MODULARIUM@2", 50, [<aspect:ordo>], <modularmachinery:blockfluidinputhatch:2>, [<modularmachinery:blockcasing>,<minecraft:hopper>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("messentiaout", "MODULARIUM@2", 50, [<aspect:perditio>], <modularmagic:blockaspectprovideroutput>, [<modularmachinery:blockcasing>,<thaumcraft:essentia_input>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("messentiain", "MODULARIUM@2", 50, [<aspect:ordo>], <modularmagic:blockaspectproviderinput>, [<modularmachinery:blockcasing>,<thaumcraft:essentia_output>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("mconstellation", "MODULARIUM@2", 50, [<aspect:aer>*10,<aspect:ignis>*10,<aspect:aqua>*10,<aspect:terra>*10,<aspect:ordo>*10,<aspect:perditio>*10], <modularmagic:blockconstellationprovider>, [<modularmachinery:blockcasing>,<astralsorcery:iteminfusedglass>.withTag({astralsorcery: {}})]);
