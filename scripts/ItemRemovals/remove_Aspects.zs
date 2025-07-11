import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import thaumcraft.aspect.CTAspectStack;
import thaumcraft.aspect.CTAspect;



/*********************************************************

This file is for removing thaumcraft aspects from items.
This is mainly done to prevent duplication/free essentia exploits.

*********************************************************/

val removeAspectItems = [
    <bibliocraft:bigbook>,
    <bibliocraft:compass>,
    <antiqueatlas:empty_antique_atlas>,
    <antiqueatlas:antique_atlas>,
    <yurtmod:super_mallet>,
    <yurtmod:mallet>,
    <embers:pipe>,
    <embers:pump>,
    <embers:item_pipe>,
    <embers:item_pump>,
    <minecraft:iron_horse_armor>,
    <minecraft:golden_horse_armor>,
    <minecraft:diamond_horse_armor>,
    <antiqueatlas:antique_atlas>,
    <antiqueatlas:empty_antique_atlas>,
    <bibliocraft:compass>,
    <bibliocraft:bigbook>,
    <iceandfire:blindfold>,
    <iceandfire:dragon_meal>,
    <iceandfire:fishing_spear>,
    <iceandfire:jar_empty>,
    <iceandfire:manuscript>,
    <tconstruct:throwball:1>,
    <tconstruct:throwball>,
    <chiselsandbits:positiveprint>,
    <chiselsandbits:negativeprint>,
    <botania:glasspick>,
    <botania:hourglass>,
    <botania:overgrowthseed>,
    <botania:blacklotus:1>,
    <botania:blacklotus>,
    <botania:animatedtorch>,
    <botania:phantomink>,
    <botania:vineball>,
    <botania:pinkinator>,
    <chiselsandbits:mirrorprint>,
    <bloodmagic:sentient_armour_helmet>,
    <bloodmagic:sentient_armour_chest>,
    <bloodmagic:sentient_armour_leggings>,
    <bloodmagic:sentient_armour_boots>
] as IItemStack[];

val aspectsTC =[
    <aspect:aer>,
    <aspect:terra>,
    <aspect:ignis>,
    <aspect:mythus>,
    <aspect:aqua>,
    <aspect:ordo>,
    <aspect:perditio>,
    <aspect:vacuos>,
    <aspect:lux>,
    <aspect:motus>,
    <aspect:gelum>,
    <aspect:vitreus>,
    <aspect:metallum>,
    <aspect:victus>,
    <aspect:mortuus>,
    <aspect:potentia>,
    <aspect:permutatio>,
    <aspect:draco>,
    <aspect:praecantatio>,
    <aspect:auram>,
    <aspect:alkimia>,
    <aspect:vitium>,
    <aspect:tenebrae>,
    <aspect:alienis>,
    <aspect:volatus>,
    <aspect:herba>,
    <aspect:instrumentum>,
    <aspect:fabrico>,
    <aspect:machina>,
    <aspect:vinculum>,
    <aspect:spiritus>,
    <aspect:cognitio>,
    <aspect:sensus>,
    <aspect:aversio>,
    <aspect:praemunio>,
    <aspect:desiderium>,
    <aspect:exanimis>,
    <aspect:bestia>,
    <aspect:humanus>
] as CTAspectStack[];

for u, item in removeAspectItems {
    removeAspectItems[u].removeAspects(aspectsTC);
}
