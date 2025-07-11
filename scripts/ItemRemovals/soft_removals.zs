import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;

/*********************************************************

The file removes existing recipes for items to replace
them with new, custom recipes.

*********************************************************/

val toRemove = [
    <botania:manavoid>,
    <botania:animatedtorch>,
    <botania:rfgenerator>,
    <botania:foresteye>,
    <botania:cocoon>,
    <botania:felpumpkin>,
    <botania:spark>,
    <botania:spellcloth>,
    <botania:altar>,
    <botania:corporeaspark>,
    <botania:corporeaspark:1>,
    <botania:pylon:1>,
    <botania:pylon:2>,
    <botania:alfheimportal>,
    <botania:runealtar>,
    <botania:alchemycatalyst>,
    <botania:conjurationcatalyst>,
    <botania:pylon>,
    <botania:rainbowrod>,
    <botania:waterrod>,
    <botania:terraformrod>,
    <botania:dirtrod>,
    <botania:managun>,
    <botania:grasshorn>,
    <botania:virus>,
    <botania:virus:1>,
    <botania:worldseed>,
    <botania:skydirtrod>,
    <botania:gravityrod>,
    <botania:cobblerod>,
    <botania:smeltrod>,
    <botania:exchangerod>,
    <botania:manamirror:1000>,
    <botania:diviningrod>,
    <botania:firerod>,
    <botania:forestdrum:2>,
    <botania:forestdrum>,
    <botania:incenseplate>,
    <botania:spreader>,
    <botania:opencrate>,
    <botania:spreader:2>,
    <botania:distributor>,
    <botania:pump>,
    <botania:hourglass>,
    <botania:opencrate:1>,
    <botania:teruterubozu>,
    <botania:turntable>,
    <botania:avatar>,
    <botania:forestdrum:1>,
    <botania:glasspick>,
    <botania:sextant>,
    <botania:obediencestick>,
    <botania:crystalbow>,
    <botania:slimebottle>,
    <botania:platform:1>,
    <botania:spreader:3>,
    <botania:corporeaindex>,
    <botania:corporeacrystalcube>,
    <botania:corporearetainer>,
    <botania:corporeainterceptor>,
    <botania:corporeafunnel>,
    <botania:lens>,
    <arcanearchives:radiant_resonator>,
    <arcanearchives:gemcutters_table>,
    <astralsorcery:blockblackmarble>,
    <bibliocraft:stockroomcatalog>,
    <antiqueatlas:empty_antique_atlas>,
    <bloodmagic:altar>,
    <bloodmagic:soul_forge>,
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
    <bloodmagic:ritual_stone>,
    <bloodmagic:blood_rune>,
    <bloodmagic:inscription_tool:1>.withTag({uses: 10}),
    <bloodmagic:inscription_tool:2>.withTag({uses: 10}),
    <bloodmagic:inscription_tool:3>.withTag({uses: 10}),
    <bloodmagic:inscription_tool:4>.withTag({uses: 10}),
    <bloodmagic:inscription_tool:5>.withTag({uses: 10}),
    <bloodmagic:ritual_controller>,
    <bloodmagic:ritual_diviner>,
    <bloodmagic:ritual_diviner:1>,
    <bloodmagic:sentient_armour_gem>,
    <mystcraft:vial>,
    <mystcraft:blockinkmixer>,
    <ebwizardry:receptacle>,
    <ebwizardry:magic_silk>,
    <ebwizardry:magic_wand>,
    <ebwizardry:novice_fire_wand>,
    <ebwizardry:novice_ice_wand>,
    <ebwizardry:novice_lightning_wand>,
    <ebwizardry:novice_necromancy_wand>,
    <ebwizardry:novice_earth_wand>,
    <ebwizardry:novice_sorcery_wand>,
    <ebwizardry:novice_healing_wand>,
    <ebwizardry:arcane_workbench>,
    <ebwizardry:acacia_lectern>,
    <ebwizardry:dark_oak_lectern>,
    <tfspellpack:minewood_lectern>,
    <ebwizardry:oak_lectern>,
    <tfspellpack:darkwood_lectern>,
    <tfspellpack:timewood_lectern>,
    <ebwizardry:spruce_lectern>,
    <tfspellpack:sortingwood_lectern>,
    <ebwizardry:birch_lectern>,
    <tfspellpack:canopy_lectern>,
    <ebwizardry:jungle_lectern>,
    <tfspellpack:mangrove_lectern>,
    <tfspellpack:twilight_oak_lectern>,
    <tfspellpack:transwood_lectern>,
    <embers:pump>,
    <embers:item_pump>,
    <mahoutsukai:attuner>,
    <embers:ignition_cannon>.withTag({cooldown: 0}),
    <embers:axe_clockwork>.withTag({tickCount: 2, didUse: 0 as byte, poweredOn: 0 as byte, cooldown: 0}),
    <embers:pickaxe_clockwork>.withTag({tickCount: 3, didUse: 0 as byte, poweredOn: 0 as byte, cooldown: 0}),
    <embers:grandhammer>.withTag({tickCount: 1, didUse: 0 as byte, poweredOn: 0 as byte, cooldown: 0}),
    <embers:staff_ember>.withTag({cooldown: 0}),
    <modularmachinery:itemmodularium>,
    <modularmachinery:blockcasing:2>,
    <modularmachinery:blockcasing:4>,
    <modularmachinery:blockinputbus>,
    <modularmachinery:blockinputbus:1>,
    <modularmachinery:blockoutputbus>,
    <modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockfluidinputhatch>,
    <modularmachinery:blockfluidinputhatch:1>,
    <modularmachinery:blockfluidoutputhatch>,
    <modularmachinery:blockfluidoutputhatch:1>,
    <modularmachinery:blockenergyinputhatch>,
    <modularmachinery:blockenergyinputhatch:1>,
    <modularmachinery:blockenergyoutputhatch>,
    <modularmachinery:blockenergyoutputhatch:1>,
    <embers:ignition_cannon>,
    <embers:staff_ember>,
    <embers:grandhammer>,
    <embers:pickaxe_clockwork>,
    <embers:axe_clockwork>,
    <embers:ember_relay>,
    <mystcraft:vial>,
    <iceandfire:dragon_meal>,
    <extrautils2:user>,
    <extrautils2:miner>,
    <naturescompass:naturescompass>,
    <botania:pool>
]as IItemStack[];
for i, item in toRemove {
    recipes.remove(item, false);
}

//REMOVAL BY RECIPE NAME
recipes.removeByRecipeName("astralsorcery:shaped/cc_parchment");
recipes.removeByRecipeName("astralsorcery:shaped/journal");
recipes.removeByRecipeName("astralsorcery:shaped/tool_basicwand");

recipes.removeByRecipeName("ebwizardry:crystal_flower_to_crystals");

recipes.removeByRecipeName("embers:blend_caminite");

recipes.removeByRecipeName("tconstruct:gadgets/throwball/efln");







//BLOOD MAGIC RECIPE REMOVAL
//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);

mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:obsidian>, <minecraft:diamond_chestplate>, <bloodmagic:soul_gem:1>]);

//demon crucible
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:diamond>,<minecraft:dye:4>, <minecraft:cauldron>, <minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:diamond>,<minecraft:dye:4>, <minecraft:cauldron>, <thebetweenlands:smooth_betweenstone>]);



//demon crystallizer
//You sadly cannot do oredict with blood magic, so, here we go!
val bloodMagicGlass = [
    <aether_legacy:quicksoil_glass>,
    <thebetweenlands:silt_glass>,
    <tconstruct:clear_glass>,
    <tconstruct:clear_stained_glass>,
    <tconstruct:clear_stained_glass:1>,
    <tconstruct:clear_stained_glass:2>,
    <tconstruct:clear_stained_glass:3>,
    <tconstruct:clear_stained_glass:4>,
    <tconstruct:clear_stained_glass:5>,
    <tconstruct:clear_stained_glass:6>,
    <tconstruct:clear_stained_glass:7>,
    <tconstruct:clear_stained_glass:8>,
    <tconstruct:clear_stained_glass:9>,
    <tconstruct:clear_stained_glass:10>,
    <tconstruct:clear_stained_glass:11>,
    <tconstruct:clear_stained_glass:12>,
    <tconstruct:clear_stained_glass:13>,
    <tconstruct:clear_stained_glass:14>,
    <tconstruct:clear_stained_glass:15>,
    <chisel:glassdyedwhite>,
    <chisel:glassdyedwhite:1>,
    <chisel:glassdyedwhite:2>,
    <chisel:glassdyedwhite:3>,
    <chisel:glassdyedwhite:4>,
    <chisel:glassdyedwhite:5>,
    <chisel:glassdyedorange>,
    <chisel:glassdyedorange:1>,
    <chisel:glassdyedorange:2>,
    <chisel:glassdyedorange:3>,
    <chisel:glassdyedorange:4>,
    <chisel:glassdyedorange:5>,
    <chisel:glassdyedmagenta>,
    <chisel:glassdyedmagenta:1>,
    <chisel:glassdyedmagenta:2>,
    <chisel:glassdyedmagenta:3>,
    <chisel:glassdyedmagenta:4>,
    <chisel:glassdyedmagenta:5>,
    <chisel:glassdyedlightblue>,
    <chisel:glassdyedlightblue:1>,
    <chisel:glassdyedlightblue:2>,
    <chisel:glassdyedlightblue:3>,
    <chisel:glassdyedlightblue:4>,
    <chisel:glassdyedlightblue:5>,
    <chisel:glassdyedyellow>,
    <chisel:glassdyedyellow:1>,
    <chisel:glassdyedyellow:2>,
    <chisel:glassdyedyellow:3>,
    <chisel:glassdyedyellow:4>,
    <chisel:glassdyedyellow:5>,
    <chisel:glassdyedlime>,
    <chisel:glassdyedlime:1>,
    <chisel:glassdyedlime:2>,
    <chisel:glassdyedlime:3>,
    <chisel:glassdyedlime:4>,
    <chisel:glassdyedlime:5>,
    <chisel:glassdyedpink>,
    <chisel:glassdyedpink:1>,
    <chisel:glassdyedpink:2>,
    <chisel:glassdyedpink:3>,
    <chisel:glassdyedpink:4>,
    <chisel:glassdyedpink:5>,
    <chisel:glassdyedgray>,
    <chisel:glassdyedgray:1>,
    <chisel:glassdyedgray:2>,
    <chisel:glassdyedgray:3>,
    <chisel:glassdyedgray:4>,
    <chisel:glassdyedgray:5>,
    <chisel:glassdyedlightgray>,
    <chisel:glassdyedlightgray:1>,
    <chisel:glassdyedlightgray:2>,
    <chisel:glassdyedlightgray:3>,
    <chisel:glassdyedlightgray:4>,
    <chisel:glassdyedlightgray:5>,
    <chisel:glassdyedcyan>,
    <chisel:glassdyedcyan:1>,
    <chisel:glassdyedcyan:2>,
    <chisel:glassdyedcyan:3>,
    <chisel:glassdyedcyan:4>,
    <chisel:glassdyedcyan:5>,
    <chisel:glassdyedpurple>,
    <chisel:glassdyedpurple:1>,
    <chisel:glassdyedpurple:2>,
    <chisel:glassdyedpurple:3>,
    <chisel:glassdyedpurple:4>,
    <chisel:glassdyedpurple:5>,
    <chisel:glassdyedblue>,
    <chisel:glassdyedblue:1>,
    <chisel:glassdyedblue:2>,
    <chisel:glassdyedblue:3>,
    <chisel:glassdyedblue:4>,
    <chisel:glassdyedblue:5>,
    <chisel:glassdyedbrown>,
    <chisel:glassdyedbrown:1>,
    <chisel:glassdyedbrown:2>,
    <chisel:glassdyedbrown:3>,
    <chisel:glassdyedbrown:4>,
    <chisel:glassdyedbrown:5>,
    <chisel:glassdyedgreen>,
    <chisel:glassdyedgreen:1>,
    <chisel:glassdyedgreen:2>,
    <chisel:glassdyedgreen:3>,
    <chisel:glassdyedgreen:4>,
    <chisel:glassdyedgreen:5>,
    <chisel:glassdyedred>,
    <chisel:glassdyedred:1>,
    <chisel:glassdyedred:2>,
    <chisel:glassdyedred:3>,
    <chisel:glassdyedred:4>,
    <chisel:glassdyedred:5>,
    <chisel:glassdyedblack>,
    <chisel:glassdyedblack:1>,
    <chisel:glassdyedblack:2>,
    <chisel:glassdyedblack:3>,
    <chisel:glassdyedblack:4>,
    <chisel:glassdyedblack:5>,
    <chisel:glass>,
    <chisel:glass:3>,
    <chisel:glass:4>,
    <chisel:glass:5>,
    <chisel:glass:6>,
    <chisel:glass:7>,
    <chisel:glass:8>,
    <chisel:glass:9>,
    <chisel:glass:10>,
    <chisel:glass:11>,
    <chisel:glass:12>,
    <chisel:glass:13>,
    <chisel:glass:14>,
    <chisel:glass:15>,
    <chisel:glass:1>,
    <chisel:glass1>,
    <chisel:glass:2>,
    <chisel:glass1:1>,
    <cathedral:dwemer_glass_normal>,
    <cathedral:dwemer_glass_normal:1>
]as IItemStack[];

for j, item in bloodMagicGlass {
    mods.bloodmagic.TartaricForge.removeRecipe([bloodMagicGlass[j],<minecraft:dye:4>, <bloodmagic:soul_forge>, <minecraft:stone>]);
    mods.bloodmagic.TartaricForge.removeRecipe([bloodMagicGlass[j],<minecraft:dye:4>, <bloodmagic:soul_forge>, <thebetweenlands:smooth_betweenstone>]);
}


//demon pylon
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal>, <minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:1>, <minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:2>, <minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:3>, <minecraft:stone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:4>, <minecraft:stone>]);

mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal>, <thebetweenlands:smooth_betweenstone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:1>, <thebetweenlands:smooth_betweenstone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:2>, <thebetweenlands:smooth_betweenstone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:3>, <thebetweenlands:smooth_betweenstone>]);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:iron_block>,<minecraft:dye:4>, <bloodmagic:item_demon_crystal:4>, <thebetweenlands:smooth_betweenstone>]);
