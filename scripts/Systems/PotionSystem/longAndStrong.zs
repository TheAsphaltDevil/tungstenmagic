import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;
import mods.botania.Brew;

//POTION SCRIPT V2
//Mods used:
//Thaumcraft
//Extra Alchemy
//Potion Core
//Mowzie's Mobs????????????

//Script by The_AsphaltDevil
//Intended for the tungsten magic modpack, but feel free to use it in your own creations!
//This script generates all of the "II" variants (i.e. strong variants) and all of the increased time variants of each potion.
//Only potion core potions need to be used for this, since vanilla and extra alchemy potions already have long and strong recipes.
val longSources =[
    <minecraft:potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:nausea"}),
    <minecraft:potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:potion>.withTag({Potion: "potioncore:health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:potion>.withTag({Potion: "potioncore:perplexity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:archery"}),
    <minecraft:potion>.withTag({Potion: "mowziesmobs:poison_resist"})
] as IItemStack[];

val longPotions = [
    <minecraft:potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_nausea"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_perplexity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_archery"}),
    <minecraft:potion>.withTag({Potion: "mowziesmobs:long_poison_resist"})
] as IItemStack[];

val strongSources = [
    <minecraft:potion>.withTag({Potion: "potioncore:saturation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:chance"}),
    <minecraft:potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:archery"})
] as IItemStack[];

val strongPotions = [
    <minecraft:potion>.withTag({Potion: "potioncore:strong_saturation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_chance"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_archery"})
] as IItemStack[];

//Add recipes for the long potions
for l, item in longPotions {
    brewing.addBrew(longSources[l], <minecraft:redstone>, longPotions[l]);
}

//Add recipes for the strong potions
for m, item in strongPotions {
    brewing.addBrew(strongSources[m], <minecraft:glowstone_dust>, strongPotions[m]);
}