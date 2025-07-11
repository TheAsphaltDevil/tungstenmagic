import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;

//PRIMARY PROGRESSION

var stageoneitems = [
    <minecraft:brewing_stand>,
    <embers:ancient_motive_core>,
    <embers:blend_caminite>,
    <embers:mech_core>,
    <bloodmagic:soul_forge>,
    <ebwizardry:arcane_workbench>,
    <botania:runealtar>,
    <botania:spreader>,
    <botania:spreader:1>,
    <botania:manatablet>,
    <botania:twigwand>,
    <botania:alchemycatalyst>,
    <embers:boiler>,
    <embers:ember_bore>,
    <embers:tinker_hammer>,
    <embers:ember_emitter>,
    <embers:ember_receiver>,
    <embers:tinker_lens>,
    <bloodmagic:altar>,
    <astralsorcery:blockattunementaltar>,
    <astralsorcery:blockattunementrelay>,
    <astralsorcery:blockmachine>,
    <ebwizardry:apprentice_wand>,
    <arcanearchives:manifest>,
    <arcanearchives:raw_quartz>,
    <arcanearchives:shaped_quartz>,
    <arcanearchives:letter_invitation>,
    <arcanearchives:letter_resignation>,
    <arcanearchives:writ_expulsion>,
    <arcanearchives:radiant_amphora>,
    <arcanearchives:radiant_dust>,
    <arcanearchives:devouring_charm>,
    <arcanearchives:scepter_revelation>,
    <arcanearchives:scepter_manipulation>,
    <arcanearchives:gemsocket>,
    <arcanearchives:radiant_key>,
    <arcanearchives:radiant_chest>,
    <arcanearchives:radiant_crafting_table>,
    <arcanearchives:lectern_manifest>,
    <arcanearchives:gemcutters_table>,
    <arcanearchives:radiant_trove>,
    <arcanearchives:monitoring_crystal>,
    <arcanearchives:radiant_tank>,
    <arcanearchives:brazier_of_hoarding>,
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"})
] as IItemStack[];

var stagetwoitems = [
    <embers:mixer>,
    <bloodmagic:component:8>,
    <tconstruct:materials>,
    <ebwizardry:arcane_tome:2>,
    <botania:alfheimportal>,
    <botania:pylon:1>,
    <botania:spreader:2>,
    <botania:conjurationcatalyst>,
    <embers:ingot_dawnstone>,
    <embers:ember_funnel>,
    <embers:ember_pulser>,
    <astralsorcery:blockstarlightinfuser>,
    <ebwizardry:advanced_wand>,
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"})
] as IItemStack[];

var stagethreeitems = [
    <embers:alchemy_tablet>,
    <ebwizardry:arcane_tome:3>,
    <botania:terraplate>,
    <thaumicaugmentation:thaumostatic_harness>,
    <botania:spreader:3>,
    <embers:beam_cannon>,
    <embers:aspectus_dawnstone>,
    <embers:aspectus_silver>,
    <embers:aspectus_lead>,
    <embers:aspectus_copper>,
    <embers:aspectus_iron>,
    <embers:cinder_plinth>,
    <embers:ashen_cloth>,
    <embers:dust_ash>,
    <astralsorcery:blockobservatory>,
    <astralsorcery:blockmapdrawingtable>,
    <ebwizardry:master_wand>,
    <thaumicaugmentation:fracture_locator>,
    <thaumcraft:ingot:1>,
    <thaumicaugmentation:augment_caster_rift_energy_storage>,
    <thaumicaugmentation:material:3>,
    <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"})
] as IItemStack[];

for i, item in stageoneitems {
    Recipes.setRecipeStage("sophomore", stageoneitems[i]);
    mods.ItemStages.addItemStage("sophomore", stageoneitems[i]);
}

for j, item in stagetwoitems {
    Recipes.setRecipeStage("junior", stagetwoitems[j]);
    mods.ItemStages.addItemStage("junior", stagetwoitems[j]);
}

for k, item in stagethreeitems {
    Recipes.setRecipeStage("senior", stagethreeitems[k]);
    mods.ItemStages.addItemStage("senior", stagethreeitems[k]);
}




Recipes.setRecipeStage("freshmanFinished", <astralsorcery:blockaltar:1>);
mods.ItemStages.addItemStage("freshmanFinished", <astralsorcery:blockaltar:1>);

Recipes.setRecipeStage("sophomoreFinished", <astralsorcery:blockaltar:2>);
mods.ItemStages.addItemStage("sophomoreFinished", <astralsorcery:blockaltar:2>);

Recipes.setRecipeStage("juniorFinished", <astralsorcery:blockaltar:3>);
mods.ItemStages.addItemStage("juniorFinished", <astralsorcery:blockaltar:3>);

mods.ItemStages.addItemStage("discidia", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.discidia"}}));
mods.ItemStages.addItemStage("armara", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.armara"}}));
mods.ItemStages.addItemStage("vicio", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.vicio"}}));
mods.ItemStages.addItemStage("aevitas", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.aevitas"}}));
mods.ItemStages.addItemStage("evorsio", <astralsorcery:itemshiftingstar>.withTag({astralsorcery: {starAttunement: "astralsorcery.constellation.evorsio"}}));





//Recipes.setRecipeStage("bannedItemsThatWouldNotRemoveWithScripting", );
//mods.ItemStages.addItemStage("bannedItemsThatWouldNotRemoveWithScripting", );
Recipes.setRecipeStage("bannedItemsThatWouldNotRemoveWithScripting", <arcanearchives:elixirspindle>.withTag({charge: 5, infinite: 0 as byte}));
mods.ItemStages.addItemStage("bannedItemsThatWouldNotRemoveWithScripting", <arcanearchives:elixirspindle>.withTag({charge: 5, infinite: 0 as byte}));
Recipes.setRecipeStage("bannedItemsThatWouldNotRemoveWithScripting", <aether_legacy:regeneration_stone>);
mods.ItemStages.addItemStage("bannedItemsThatWouldNotRemoveWithScripting", <aether_legacy:regeneration_stone>);




//FIRE
val fire = [
    <ebwizardry:novice_fire_wand>,
    <ebwizardry:apprentice_fire_wand>,
    <ebwizardry:advanced_fire_wand>,
    <ebwizardry:master_fire_wand>,
    <ebwizardry:wizard_hat_fire>,
    <ebwizardry:wizard_robe_fire>,
    <ebwizardry:wizard_leggings_fire>,
    <ebwizardry:wizard_boots_fire>,
    <ebwizardry:battlemage_helmet_fire>,
    <ebwizardry:battlemage_chestplate_fire>,
    <ebwizardry:battlemage_leggings_fire>,
    <ebwizardry:battlemage_boots_fire>,
    <ebwizardry:magic_crystal:1>,
    <ebwizardry:sage_hat_fire>,
    <ebwizardry:sage_robe_fire>,
    <ebwizardry:sage_leggings_fire>,
    <ebwizardry:sage_boots_fire>,
    <ebwizardry:warlock_hood_fire>,
    <ebwizardry:warlock_robe_fire>,
    <ebwizardry:warlock_leggings_fire>,
    <ebwizardry:warlock_boots_fire>,
    <ebwizardry:spectral_dust:1>
] as IItemStack[];
for l, item in fire {
    Recipes.setRecipeStage("fireSpells", fire[l]);
    mods.ItemStages.addItemStage("fireSpells", fire[l]);
}



//ICE
val ice = [
    <ebwizardry:novice_ice_wand>,
    <ebwizardry:apprentice_ice_wand>,
    <ebwizardry:advanced_ice_wand>,
    <ebwizardry:master_ice_wand>,
    <ebwizardry:wizard_hat_ice>,
    <ebwizardry:wizard_robe_ice>,
    <ebwizardry:wizard_leggings_ice>,
    <ebwizardry:wizard_boots_ice>,
    <ebwizardry:battlemage_helmet_ice>,
    <ebwizardry:battlemage_chestplate_ice>,
    <ebwizardry:battlemage_leggings_ice>,
    <ebwizardry:battlemage_boots_ice>,
    <ebwizardry:warlock_hood_healing>,
    <ebwizardry:warlock_robe_healing>,
    <ebwizardry:warlock_leggings_healing>,
    <ebwizardry:warlock_boots_healing>,
    <ebwizardry:sage_hat_ice>,
    <ebwizardry:sage_robe_ice>,
    <ebwizardry:sage_leggings_ice>,
    <ebwizardry:sage_boots_ice>,
    <ebwizardry:spectral_dust:2>,
    <ebwizardry:magic_crystal:2>
] as IItemStack[];
for m, item in ice {
    Recipes.setRecipeStage("iceSpells", ice[m]);
    mods.ItemStages.addItemStage("iceSpells", ice[m]);
}


//STORM
val storm = [
    <ebwizardry:novice_lightning_wand>,
    <ebwizardry:apprentice_lightning_wand>,
    <ebwizardry:advanced_lightning_wand>,
    <ebwizardry:master_lightning_wand>,
    <ebwizardry:wizard_hat_lightning>,
    <ebwizardry:wizard_robe_lightning>,
    <ebwizardry:wizard_leggings_lightning>,
    <ebwizardry:wizard_boots_lightning>,
    <ebwizardry:battlemage_helmet_lightning>,
    <ebwizardry:battlemage_chestplate_lightning>,
    <ebwizardry:battlemage_leggings_lightning>,
    <ebwizardry:battlemage_boots_lightning>,
    <ebwizardry:warlock_hood_lightning>,
    <ebwizardry:warlock_robe_lightning>,
    <ebwizardry:warlock_leggings_lightning>,
    <ebwizardry:warlock_boots_lightning>,
    <ebwizardry:sage_hat_lightning>,
    <ebwizardry:sage_robe_lightning>,
    <ebwizardry:sage_leggings_lightning>,
    <ebwizardry:sage_boots_lightning>,
    <ebwizardry:spectral_dust:3>,
    <ebwizardry:magic_crystal:3>
] as IItemStack[];
for n, item in storm {
    Recipes.setRecipeStage("stormSpells", storm[n]);
    mods.ItemStages.addItemStage("stormSpells", storm[n]);
}


//NECROMANCY
val necromancy = [
    <ebwizardry:novice_necromancy_wand>,
    <ebwizardry:apprentice_necromancy_wand>,
    <ebwizardry:advanced_necromancy_wand>,
    <ebwizardry:master_necromancy_wand>,
    <ebwizardry:wizard_hat_necromancy>,
    <ebwizardry:wizard_robe_necromancy>,
    <ebwizardry:wizard_leggings_necromancy>,
    <ebwizardry:wizard_boots_necromancy>,
    <ebwizardry:sage_hat_necromancy>,
    <ebwizardry:sage_robe_necromancy>,
    <ebwizardry:sage_leggings_necromancy>,
    <ebwizardry:sage_boots_necromancy>,
    <ebwizardry:battlemage_helmet_necromancy>,
    <ebwizardry:battlemage_chestplate_necromancy>,
    <ebwizardry:battlemage_leggings_necromancy>,
    <ebwizardry:battlemage_boots_necromancy>,
    <ebwizardry:warlock_hood_necromancy>,
    <ebwizardry:warlock_robe_necromancy>,
    <ebwizardry:warlock_leggings_necromancy>,
    <ebwizardry:warlock_boots_necromancy>,
    <ebwizardry:spectral_dust:4>,
    <ebwizardry:magic_crystal:4>
] as IItemStack[];
for o, item in necromancy {
    Recipes.setRecipeStage("necromancySpells", necromancy[o]);
    mods.ItemStages.addItemStage("necromancySpells", necromancy[o]);
}

//EARTH
val earth = [
    <ebwizardry:novice_earth_wand>,
    <ebwizardry:apprentice_earth_wand>,
    <ebwizardry:advanced_earth_wand>,
    <ebwizardry:master_earth_wand>,
    <ebwizardry:wizard_hat_earth>,
    <ebwizardry:wizard_robe_earth>,
    <ebwizardry:wizard_leggings_earth>,
    <ebwizardry:wizard_boots_earth>,
    <ebwizardry:sage_hat_earth>,
    <ebwizardry:sage_robe_earth>,
    <ebwizardry:sage_leggings_earth>,
    <ebwizardry:sage_boots_earth>,
    <ebwizardry:battlemage_helmet_earth>,
    <ebwizardry:battlemage_chestplate_earth>,
    <ebwizardry:battlemage_leggings_earth>,
    <ebwizardry:battlemage_boots_earth>,
    <ebwizardry:warlock_hood_earth>,
    <ebwizardry:warlock_robe_earth>,
    <ebwizardry:warlock_leggings_earth>,
    <ebwizardry:warlock_boots_earth>,
    <ebwizardry:spectral_dust:5>,
    <ebwizardry:magic_crystal:5>
] as IItemStack[];
for p, item in earth {
    Recipes.setRecipeStage("earthSpells", earth[p]);
    mods.ItemStages.addItemStage("earthSpells", earth[p]);
}



//SORCERY
val sorcery = [
    <ebwizardry:novice_sorcery_wand>,
    <ebwizardry:apprentice_sorcery_wand>,
    <ebwizardry:advanced_sorcery_wand>,
    <ebwizardry:master_sorcery_wand>,
    <ebwizardry:wizard_hat_sorcery>,
    <ebwizardry:wizard_robe_sorcery>,
    <ebwizardry:wizard_leggings_sorcery>,
    <ebwizardry:wizard_boots_sorcery>,
    <ebwizardry:sage_hat_sorcery>,
    <ebwizardry:sage_robe_sorcery>,
    <ebwizardry:sage_leggings_sorcery>,
    <ebwizardry:sage_boots_sorcery>,
    <ebwizardry:battlemage_helmet_sorcery>,
    <ebwizardry:battlemage_chestplate_sorcery>,
    <ebwizardry:battlemage_leggings_sorcery>,
    <ebwizardry:battlemage_boots_sorcery>,
    <ebwizardry:warlock_hood_sorcery>,
    <ebwizardry:warlock_robe_sorcery>,
    <ebwizardry:warlock_leggings_sorcery>,
    <ebwizardry:warlock_boots_sorcery>,
    <ebwizardry:spectral_dust:6>,
    <ebwizardry:magic_crystal:6>
] as IItemStack[];
for q, item in earth {
    Recipes.setRecipeStage("sorcerySpells", sorcery[q]);
    mods.ItemStages.addItemStage("sorcerySpells", sorcery[q]);
}

//HEALING
val healing = [
    <ebwizardry:novice_healing_wand>,
    <ebwizardry:apprentice_healing_wand>,
    <ebwizardry:advanced_healing_wand>,
    <ebwizardry:master_healing_wand>,
    <ebwizardry:wizard_hat_healing>,
    <ebwizardry:wizard_robe_healing>,
    <ebwizardry:wizard_leggings_healing>,
    <ebwizardry:wizard_boots_healing>,
    <ebwizardry:sage_hat_healing>,
    <ebwizardry:sage_robe_healing>,
    <ebwizardry:sage_leggings_healing>,
    <ebwizardry:sage_boots_healing>,
    <ebwizardry:battlemage_helmet_healing>,
    <ebwizardry:battlemage_chestplate_healing>,
    <ebwizardry:battlemage_leggings_healing>,
    <ebwizardry:battlemage_boots_healing>,
    <ebwizardry:warlock_hood_healing>,
    <ebwizardry:warlock_robe_healing>,
    <ebwizardry:warlock_leggings_healing>,
    <ebwizardry:warlock_boots_healing>,
    <ebwizardry:spectral_dust:7>,
    <ebwizardry:magic_crystal:7>
] as IItemStack[];
for r, item in healing {
    Recipes.setRecipeStage("healingSpells", healing[r]);
    mods.ItemStages.addItemStage("healingSpells", healing[r]);
}