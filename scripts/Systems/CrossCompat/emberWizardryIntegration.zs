import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import crafttweaker.item.WeightedItemStack;
import mods.embers.EmberBore;
import mods.embers.EmberGeneration;
import mods.embers.Alchemy;
import mods.embers.Stamper;

/********************************************************************************************************

For the tungsten magic modpack.

In this modpack, the various magic fuels
(botania's mana, embers' ember, thaumcraft's vis, electroblob's crystals)

are just different states of matter for the same magic energy.

To acheive this idea, I wanted ember crystals to be replaced with the electroblob's wizardry crystals.

********************************************************************************************************/




//Phase 1: Replace the Ember bore's outputs with electroblob's crystals.
//You will still get ember grit and mundane stones.
var defaultBoreset = EmberBore.getDefault();

val shard = <ebwizardry:crystal_shard>;
val crystal = <ebwizardry:magic_crystal>;

val weightedShard = shard.weight(33.3);
val weightedCrystal = crystal.weight(15.0);

defaultBoreset.addOutput(weightedShard);
defaultBoreset.addOutput(weightedCrystal);

defaultBoreset.removeOutput(<embers:shard_ember>);
defaultBoreset.removeOutput(<embers:crystal_ember>);



//Phase 2: Make the crystals work in ember generating machines.
//They have the same stats as the original ember crystals.
mods.embers.EmberGeneration.addEmberFuel(<ebwizardry:crystal_shard>, 400);
mods.embers.EmberGeneration.addEmberFuel(<ebwizardry:magic_crystal>, 2400);
mods.embers.EmberGeneration.addEmberFuel(<ebwizardry:grand_crystal>, 3600);




//Phase 3: Delete all recipes that the ember crystals were used in


//Embers Alchemy
val emberAlchemyRecipestoRemove = [
    <embers:ember_cluster>, //shard
    <embers:seed_copper>,
    <embers:seed_silver>,
    <embers:seed_lead>,
    <embers:seed_gold>,
    <embers:seed_tin>,
    <embers:seed_aluminum>,
    <embers:seed_nickel>,
    <embers:seed_iron>,
    <embers:glimmer_shard>.withTag({light: 800}),
    <embers:ancient_motive_core>,
    <embers:focal_lens>, //crystal
    <embers:flame_barrier>,
    <embers:explosion_charm>, //cluster
    <embers:wildfire_core>,
] as IItemStack[];

for a, item in emberAlchemyRecipestoRemove {
    mods.embers.Alchemy.remove(emberAlchemyRecipestoRemove[a]);
}


//copper = aer
//dawnstone = ignis
//iron = perditio
//silver = ordo
//lead = aqua
mods.embers.Alchemy.addAspect("terra", <contenttweaker:aspectus_terra>);

//Couldn't get loops to work, so I had to manually write out each recipe.
mods.embers.Alchemy.add(<ebwizardry:grand_crystal>,[<ebwizardry:magic_crystal>, <minecraft:gunpowder>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"dawnstone":24 to 48,"copper":24 to 48});
mods.embers.Alchemy.add(<embers:seed_copper>,[<minecraft:quartz>, <embers:ingot_copper>, <embers:ingot_copper>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"copper":48 to 64});
mods.embers.Alchemy.add(<embers:seed_silver>,[<minecraft:quartz>, <embers:ingot_silver>, <embers:ingot_silver>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"silver":48 to 64});
mods.embers.Alchemy.add(<embers:seed_lead>,[<minecraft:quartz>, <embers:ingot_lead>, <embers:ingot_lead>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"lead":48 to 64});
mods.embers.Alchemy.add(<embers:seed_gold>,[<minecraft:quartz>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"gold":48 to 64});
mods.embers.Alchemy.add(<embers:seed_tin>,[<minecraft:quartz>, <embers:ingot_tin>, <embers:ingot_tin>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"tin":48 to 64});
mods.embers.Alchemy.add(<embers:seed_aluminum>,[<minecraft:quartz>, <embers:ingot_aluminum>, <embers:ingot_aluminum>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"aluminum":48 to 64});
mods.embers.Alchemy.add(<embers:seed_nickel>,[<minecraft:quartz>, <embers:ingot_nickel>, <embers:ingot_nickel>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":48 to 64,"nickel":48 to 64});
mods.embers.Alchemy.add(<embers:seed_iron>,[<minecraft:quartz>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <ebwizardry:crystal_shard>, <ebwizardry:crystal_shard>], {"iron":96 to 128});
mods.embers.Alchemy.add(<embers:glimmer_shard>.withTag({light: 800}),[<minecraft:quartz>,<minecraft:gunpowder>,<minecraft:gunpowder>,<ebwizardry:crystal_shard>,<ebwizardry:crystal_shard>],{"dawnstone":64 to 80});
mods.embers.Alchemy.add(<embers:ancient_motive_core>,[<ebwizardry:crystal_shard>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>,<embers:archaic_brick>],{"dawnstone":24 to 32});
mods.embers.Alchemy.add(<embers:focal_lens>,[<ebwizardry:magic_crystal>,<embers:plate_dawnstone>,<embers:plate_silver>,<embers:plate_dawnstone>,<embers:plate_silver>],{"copper":8 to 16, "silver":32 to 64});
mods.embers.Alchemy.add(<embers:flame_barrier>,[<ebwizardry:magic_crystal>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,<embers:plate_dawnstone>,<embers:ingot_silver>],{"dawnstone":16 to 32, "silver":16 to 32});
mods.embers.Alchemy.add(<embers:explosion_charm>,[<ebwizardry:grand_crystal>,<embers:archaic_brick>,<minecraft:leather>,<embers:archaic_brick>,<embers:archaic_brick>],{"copper":8 to 32, "iron":8 to 32});
mods.embers.Alchemy.add(<embers:wildfire_core>,[<embers:ancient_motive_core>,<embers:ingot_dawnstone>,<ebwizardry:grand_crystal>,<embers:ingot_dawnstone>,<embers:plate_copper>],{"silver":24 to 32, "iron":32 to 48});


//embers stamper
val emberStampRecipestoRemove = [
    <soot:signet_antimony>,
    <embers:aspectus_dawnstone>,
    <embers:aspectus_copper>,
    <embers:aspectus_silver>,
    <embers:aspectus_lead>,
    <embers:aspectus_iron>,
] as IItemStack[];

for b, item in emberStampRecipestoRemove {
    mods.embers.Stamper.remove(emberStampRecipestoRemove[b]);
}

mods.embers.Stamper.add(<soot:signet_antimony>, <liquid:antimony>*144, <embers:stamp_plate>, <ebwizardry:crystal_shard>);


val embersBenchRecipesToRemove = [
    <embers:block_lantern>,
    <embers:ember_jar>,
    <embers:archaic_light>,
    <embers:archaic_edge>,
    <embers:jet_augment>,
    <embers:stirling>,
    <embers:ember_cartridge>,
    <embers:caster_orb>,
    <embers:ember_ring>,
    <embers:ember_amulet>,
    <embers:ember_belt>,
    <embers:ember_bulb>
] as IItemStack[];

for c, item in embersBenchRecipesToRemove {
    recipes.remove(embersBenchRecipesToRemove[c], false);
}

recipes.addShaped("embers_stirling", <embers:stirling>, [[<ore:plateDawnstone>, <ore:blockCopper>, <ore:plateDawnstone>], [<ore:plateDawnstone>, <ore:blockCopper>, <ore:plateDawnstone>], [<ebwizardry:crystal_shard>, <embers:wildfire_core:*>, <ebwizardry:crystal_shard>]]);
recipes.addShaped("embers_jet_augment", <embers:jet_augment>, [[<ore:plateDawnstone>, <ore:plateDawnstone>, null], [<ore:ingotIron>, <ebwizardry:crystal_shard>, <ore:ingotDawnstone>], [<ore:plateDawnstone>, <ore:plateDawnstone>, null]]);
recipes.addShaped("embers_archaic_edge", <embers:archaic_edge> * 2, [[<embers:archaic_brick:*>, <embers:archaic_brick:*>, <embers:archaic_brick:*>], [<embers:archaic_brick:*>, <ebwizardry:crystal_shard>, <embers:archaic_brick:*>], [<embers:archaic_brick:*>, <embers:archaic_brick:*>, <embers:archaic_brick:*>]]);
recipes.addShaped("embers_archaic_light", <embers:archaic_light>, [[null, <embers:archaic_brick:*>, null], [<embers:archaic_brick:*>, <ebwizardry:crystal_shard>, <embers:archaic_brick:*>], [null, <embers:archaic_brick:*>, null]]);
recipes.addShaped("embers_ember_jar", <embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}), [[null, <ore:ingotCopper>, null], [<ore:ingotIron>, <ebwizardry:crystal_shard>, <ore:ingotIron>], [null, <ore:blockGlass>, null]]);
recipes.addShaped("embers_block_lantern", <embers:block_lantern> * 4, [[<ore:plateIron>], [<ebwizardry:crystal_shard>], [<ore:ingotIron>]]);

recipes.addShaped("embers_ember_cartridge", <embers:ember_cartridge>.withTag({emberCapacity: 6000.0, ember: 0.0}), [[<ore:ingotIron>, <ore:plateCopper>, <ore:ingotIron>], [<ore:blockGlass>, <ebwizardry:magic_crystal>, <ore:blockGlass>], [null, <ore:blockGlass>, null]]);
recipes.addShaped("embers_caster_orb", <embers:caster_orb>, [[<ore:ingotDawnstone>, <ebwizardry:magic_crystal>, <ore:ingotDawnstone>], [<ore:ingotDawnstone>, null, <ore:ingotDawnstone>], [null, <ore:plateDawnstone>, null]]);

recipes.addShaped("embers_ember_ring", <embers:ember_ring>, [[<ebwizardry:grand_crystal>, <ore:nuggetDawnstone>, null], [<ore:nuggetDawnstone>, null, <ore:nuggetDawnstone>], [null, <ore:nuggetDawnstone>, null]]);
recipes.addShaped("embers_ember_amulet", <embers:ember_amulet>, [[null, <minecraft:leather:*>, null], [<minecraft:leather:*>, null, <minecraft:leather:*>], [<ore:nuggetDawnstone>, <ebwizardry:grand_crystal>, <ore:nuggetDawnstone>]]);
recipes.addShaped("embers_ember_belt", <embers:ember_belt>, [[<minecraft:leather:*>, <ore:ingotDawnstone>, <minecraft:leather:*>], [<minecraft:leather:*>, null, <minecraft:leather:*>], [<ore:plateDawnstone>, <ebwizardry:grand_crystal>, <ore:plateDawnstone>]]);
recipes.addShaped("embers_ember_bulb", <embers:ember_bulb>.withTag({emberCapacity: 1000.0, ember: 0.0}), [[null, <ore:plateDawnstone>, <ore:ingotLead>], [<ore:blockGlass>, <ebwizardry:grand_crystal>, <ore:blockGlass>], [null, <ore:blockGlass>, null]]);