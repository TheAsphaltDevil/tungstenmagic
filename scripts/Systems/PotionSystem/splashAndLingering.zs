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
//Only potion core and mowzie's mobs potions need to be used for this, since vanilla and extra alchemy potions already have lingering and splash recipes.

val allPotions = [
    <minecraft:potion>.withTag({Potion: "potioncore:saturation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_saturation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:potion>.withTag({Potion: "potioncore:hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_hunger"}),
    <minecraft:potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:potion>.withTag({Potion: "potioncore:nausea"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_nausea"}),
    <minecraft:potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:potion>.withTag({Potion: "potioncore:absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_absorption"}),
    <minecraft:potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:potion>.withTag({Potion: "potioncore:health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_health_boost"}),
    <minecraft:potion>.withTag({Potion: "potioncore:unluck"}),
    <minecraft:potion>.withTag({Potion: "potioncore:repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_repair"}),
    <minecraft:potion>.withTag({Potion: "potioncore:flight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_flight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:recoil"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_recoil"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_recoil"}),
    <minecraft:potion>.withTag({Potion: "potioncore:broken_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_broken_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_broken_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_reach"}),
    <minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:teleport_surface"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_magic_focus"}),
    <minecraft:potion>.withTag({Potion: "potioncore:cure"}),
    <minecraft:potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:potion>.withTag({Potion: "potioncore:disorganization"}),
    <minecraft:potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:potion>.withTag({Potion: "potioncore:perplexity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_perplexity"}),
    <minecraft:potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:potion>.withTag({Potion: "potioncore:vulnerable"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_vulnerable"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_vulnerable"}),
    <minecraft:potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:potion>.withTag({Potion: "potioncore:lightning"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_magic_inhibition"}),
    <minecraft:potion>.withTag({Potion: "potioncore:chance"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_chance"}),
    <minecraft:potion>.withTag({Potion: "potioncore:invert"}),
    <minecraft:potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:potion>.withTag({Potion: "potioncore:launch"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_launch"}),
    <minecraft:potion>.withTag({Potion: "potioncore:dispel"}),
    <minecraft:potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:potion>.withTag({Potion: "potioncore:bless"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_bless"}),
    <minecraft:potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_magic_shield"}),
    <minecraft:potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:potion>.withTag({Potion: "potioncore:spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_spin"}),
    <minecraft:potion>.withTag({Potion: "potioncore:curse"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_curse"}),
    <minecraft:potion>.withTag({Potion: "potioncore:burst"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_burst"}),
    <minecraft:potion>.withTag({Potion: "potioncore:archery"}),
    <minecraft:potion>.withTag({Potion: "potioncore:strong_archery"}),
    <minecraft:potion>.withTag({Potion: "potioncore:long_archery"}),
    <minecraft:potion>.withTag({Potion: "mowziesmobs:poison_resist"}),
    <minecraft:potion>.withTag({Potion: "mowziesmobs:long_poison_resist"})
] as IItemStack[];

val splashPotions = [
    <minecraft:splash_potion>.withTag({Potion: "potioncore:saturation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_saturation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:hunger"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_hunger"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_hunger"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:nausea"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_nausea"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:absorption"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_absorption"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_absorption"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:health_boost"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_health_boost"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_health_boost"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:unluck"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:repair"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_repair"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_repair"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:flight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_flight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:recoil"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_recoil"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_recoil"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:broken_magic_shield"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_broken_magic_shield"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_broken_magic_shield"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:reach"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_reach"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_reach"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:teleport_surface"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:magic_focus"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_magic_focus"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_magic_focus"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:cure"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:disorganization"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:perplexity"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_perplexity"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:vulnerable"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_vulnerable"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_vulnerable"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:lightning"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:magic_inhibition"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_magic_inhibition"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_magic_inhibition"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:chance"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_chance"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:invert"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:launch"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_launch"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:dispel"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:bless"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_bless"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:magic_shield"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_magic_shield"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_magic_shield"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:spin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_spin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_spin"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:curse"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_curse"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:burst"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_burst"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:archery"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:strong_archery"}),
    <minecraft:splash_potion>.withTag({Potion: "potioncore:long_archery"}),
    <minecraft:splash_potion>.withTag({Potion: "mowziesmobs:poison_resist"}),
    <minecraft:splash_potion>.withTag({Potion: "mowziesmobs:long_poison_resist"})
]as IItemStack[];

val lingeringPotions = [
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:saturation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_saturation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:wither"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_wither"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_wither"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:hunger"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_hunger"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_hunger"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:blindness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_blindness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_blindness"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:nausea"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_nausea"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:levitation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_levitation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_levitation"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:absorption"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_absorption"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_absorption"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:glowing"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_glowing"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:health_boost"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_health_boost"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_health_boost"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:unluck"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:repair"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_repair"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_repair"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:flight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_flight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:recoil"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_recoil"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_recoil"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:broken_magic_shield"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_broken_magic_shield"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_broken_magic_shield"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:iron_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_iron_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_iron_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:purity"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_purity"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:reach"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_reach"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_reach"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:diamond_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_diamond_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_diamond_skin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:teleport_surface"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:magic_focus"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_magic_focus"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_magic_focus"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:cure"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:step_up"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_step_up"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_step_up"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:drown"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_drown"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:disorganization"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:climb"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_climb"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:perplexity"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_perplexity"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:rust"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_rust"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_rust"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:vulnerable"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_vulnerable"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_vulnerable"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:solid_core"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_solid_core"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:lightning"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:magic_inhibition"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_magic_inhibition"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_magic_inhibition"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:chance"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_chance"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:invert"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:weight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_weight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_weight"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:launch"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_launch"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:dispel"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:klutz"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_klutz"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_klutz"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:bless"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_bless"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:broken_armor"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_broken_armor"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_broken_armor"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:magic_shield"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_magic_shield"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_magic_shield"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:slow_fall"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_slow_fall"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_slow_fall"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:spin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_spin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_spin"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:curse"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_curse"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:burst"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_burst"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:archery"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:strong_archery"}),
    <minecraft:lingering_potion>.withTag({Potion: "potioncore:long_archery"}),
    <minecraft:lingering_potion>.withTag({Potion: "mowziesmobs:poison_resist"}),
    <minecraft:lingering_potion>.withTag({Potion: "mowziesmobs:long_poison_resist"})
]as IItemStack[];

//Add the recipes for the corresponding splash and lingering potions
for k, item in allPotions {
    brewing.addBrew(allPotions[k], <minecraft:gunpowder>, splashPotions[k]);
    brewing.addBrew(allPotions[k], <minecraft:dragon_breath>, lingeringPotions[k]);
}