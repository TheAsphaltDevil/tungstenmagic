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
//This script removes all the recipes for brewing stand normal potions. 
//We don't have to do this for potion core since there are no recipes by default.
val nonPcInputs = [
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:leaping"}),
    <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:healing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_poison"}),
    <minecraft:potion>.withTag({Potion: "minecraft:poison"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:pull_normal"}),
    <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:weakness"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:learning_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:harming"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),//New test starts on next line
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "elenaidodge2:long_endurance"}),
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:potion>.withTag({Potion: "minecraft:weakness"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged_normal"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:pull_normal"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:learning_strong"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:harming"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
    <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water"}),
    <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"})
] as IItemStack[];

val nonPcIngredients = [
    <minecraft:golden_carrot>,
    <minecraft:fermented_spider_eye>,
    <minecraft:rabbit_foot>,
    <quark:golden_frog_leg>,
    <minecraft:magma_cream>,
    <minecraft:sugar>,
    <minecraft:fermented_spider_eye>,
    <minecraft:fermented_spider_eye>,
    <minecraft:fish:3>,
    <iceandfire:shiny_scales>,
    <minecraft:speckled_melon>,
    <minecraft:fermented_spider_eye>,
    <minecraft:fermented_spider_eye>,
    <minecraft:fermented_spider_eye>,
    <minecraft:spider_eye>,
    <minecraft:ghast_tear>,
    <minecraft:blaze_powder>,
    <minecraft:fermented_spider_eye>,
    <minecraft:firework_charge>,
    <minecraft:ender_eye>,
    <minecraft:clay_ball>,
    <minecraft:snowball>,
    <minecraft:chorus_fruit>,
    <minecraft:iron_ingot>,
    <minecraft:wheat>,
    <minecraft:golden_apple>,
    <minecraft:flint>,
    <minecraft:egg>,
    <minecraft:prismarine_shard>,
    <minecraft:beetroot_seeds>,
    <minecraft:cookie>,
    <minecraft:golden_apple>,
    <minecraft:fermented_spider_eye>,
    <minecraft:gold_nugget>,
    <minecraft:iron_nugget>,
    <minecraft:poisonous_potato>,
    <minecraft:rotten_flesh>,
    <minecraft:fish>,
    <minecraft:speckled_melon>,
    <minecraft:lapis_block>,
    <minecraft:netherbrick>,
    <minecraft:coal_block>,
    <minecraft:leather>,
    <minecraft:dragon_breath>,
    <minecraft:magma_cream>,
    <minecraft:blaze_powder>,
    <minecraft:rabbit_foot>,
    <minecraft:sugar>,
    <minecraft:ghast_tear>,
    <minecraft:spider_eye>,
    <minecraft:redstone>,
    <minecraft:speckled_melon>,
    <quark:golden_frog_leg>,
    <minecraft:dragon_breath>,
    <minecraft:glowstone_dust>,
    <minecraft:dragon_breath>,
    <minecraft:dragon_breath>,
    <minecraft:nether_wart>,
    <minecraft:gunpowder>,
    <minecraft:magma_cream>,
    <minecraft:blaze_powder>,
    <minecraft:rabbit_foot>,
    <minecraft:sugar>,
    <minecraft:ghast_tear>,
    <minecraft:spider_eye>,
    <minecraft:redstone>,
    <minecraft:speckled_melon>,
    <quark:golden_frog_leg>,
    <minecraft:gunpowder>,
    <minecraft:gunpowder>,
    <minecraft:glowstone_dust>,
    <minecraft:gunpowder>,
    <minecraft:nether_wart>,
    <mowziesmobs:naga_fang>,
    <minecraft:glowstone_dust>,
    <minecraft:nether_wart>,
    <quark:golden_frog_leg>,
    <minecraft:redstone>,
    <minecraft:spider_eye>,
    <minecraft:rabbit_foot>,
    <minecraft:magma_cream>,
    <minecraft:sugar>,
    <minecraft:blaze_powder>,
    <minecraft:ghast_tear>,
    <minecraft:speckled_melon>,//new test starts after this line
    <elenaidodge2:golden_feather>,
    <minecraft:fermented_spider_eye>,
    <elenaidodge2:iron_feather>,
    <elenaidodge2:iron_feather>,
    <elenaidodge2:iron_feather>,
    <minecraft:flint>,
    <minecraft:fermented_spider_eye>,
    <minecraft:gold_ingot>,
    <minecraft:gold_ingot>,
    <minecraft:lapis_block>,
    <minecraft:iron_nugget>,
    <elenaidodge2:golden_feather>,
    <elenaidodge2:iron_feather>,
    <minecraft:prismarine_crystals>,
    <minecraft:magma_cream>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:glowstone_dust>,
    <minecraft:nether_wart>,
    <minecraft:nether_wart>,
    <minecraft:gold_nugget>,
    <minecraft:fermented_spider_eye>,
    <minecraft:poisonous_potato>,
    <minecraft:rotten_flesh>,
    <minecraft:fish>,
    <minecraft:speckled_melon>,
    <minecraft:leather>,
    <minecraft:coal_block>,
    <minecraft:cookie>,
    <minecraft:egg>,
    <minecraft:golden_apple>,
    <minecraft:chorus_fruit>,
    <minecraft:ender_eye>,
    <minecraft:firework_charge>,
    <minecraft:fermented_spider_eye>,
    <minecraft:clay_ball>
] as IItemStack[];


//brewing.removeRecipe(inputPotion, inputIngredient);
for i, item in nonPcIngredients {
    brewing.removeRecipe(nonPcInputs[i], nonPcIngredients[i]);
}

/*
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:mundane"}), <elenaidodge2:golden_feather>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "elenaidodge2:long_endurance"}), <minecraft:fermented_spider_eye>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:mundane"}), <elenaidodge2:iron_feather>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <elenaidodge2:iron_feather>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <elenaidodge2:iron_feather>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <minecraft:flint>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:water"}), <minecraft:fermented_spider_eye>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <minecraft:gold_ingot>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <minecraft:gold_ingot>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <minecraft:lapis_block>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:weakness"}), <minecraft:iron_nugget>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}), <elenaidodge2:golden_feather>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), <elenaidodge2:iron_feather>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "extraalchemy:charged_normal"}), <minecraft:prismarine_crystals>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}), <minecraft:magma_cream>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:glowstone_dust>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:water"}), <minecraft:glowstone_dust>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}), <minecraft:glowstone_dust>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}), <minecraft:nether_wart>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:water"}), <minecraft:nether_wart>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),<minecraft:gold_nugget>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "extraalchemy:pull_normal"}),<minecraft:fermented_spider_eye>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "extraalchemy:learning_strong"}),<minecraft:poisonous_potato>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),<minecraft:rotten_flesh>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),<minecraft:fish>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:harming"}),<minecraft:speckled_melon>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<minecraft:leather>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:mundane"}),<minecraft:coal_block>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "extraalchemy:charged2_normal"}),<minecraft:cookie>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<minecraft:egg>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),<minecraft:golden_apple>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:mundane"}),<minecraft:chorus_fruit>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),<minecraft:ender_eye>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),<minecraft:firework_charge>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}),<minecraft:fermented_spider_eye>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}),<minecraft:clay_ball>);
*/