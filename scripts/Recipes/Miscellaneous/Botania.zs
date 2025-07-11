import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;

import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.astralsorcery.Altar;



//Botania Mana pool infusion
//mods.botania.ManaInfusion.addInfusion(IItemStack output, IIngredient input, int mana);
//mods.botania.ManaInfusion.addAlchemy(IItemStack output, IIngredient input, int mana);
//mods.botania.ManaInfusion.addAlchemy(, ,);
//mods.botania.ManaInfusion.addConjuration(IItemStack output, IIngredient input, int mana);
/*
mods.botania.ManaInfusion.addAlchemy(<embers:ingot_tin>, <embers:ingot_lead>,2000);
mods.botania.ManaInfusion.addAlchemy(<minecraft:iron_ingot>, <embers:ingot_tin>,4000);
mods.botania.ManaInfusion.addAlchemy(<embers:ingot_copper>, <minecraft:iron_ingot>,6000);
mods.botania.ManaInfusion.addAlchemy(<embers:ingot_silver>, <embers:ingot_copper>,8000);
mods.botania.ManaInfusion.addAlchemy(<minecraft:gold_ingot>, <embers:ingot_silver>,1000);
*/
mods.botania.ManaInfusion.addConjuration(<minecraft:stone>*2, <minecraft:stone>, 100);
mods.botania.ManaInfusion.addConjuration(<minecraft:tnt>*2, <minecraft:tnt>, 1000);
mods.botania.ManaInfusion.addConjuration(<thaumcraft:bath_salts>*2, <thaumcraft:bath_salts>, 30000);
mods.botania.ManaInfusion.addConjuration(<thaumcraft:sanity_soap>*2, <thaumcraft:sanity_soap>, 30000);