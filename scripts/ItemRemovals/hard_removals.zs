import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.astralsorcery.Altar;


/*********************************************************

In this file are all items that are intended to be
completely removed from the game.

*********************************************************/

//Recipe removal
val items = [
    <extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:crusher"}),
    <forge:bucketfilled>.withTag({FluidName: "amber", Amount: 1000}),
    <embers:breaker>,
    <tconstruct:soil>,
    <botania:brewery>,
    <botania:specialflower>.withTag({type: "puredaisy"}),
    <iceandfire:silver_sword>,
    <iceandfire:silver_pickaxe>,
    <iceandfire:silver_axe>,
    <iceandfire:silver_shovel>,
    <iceandfire:silver_hoe>,
    <rustic:brewing_barrel>,
    <botania:pestleandmortar>,
    <embers:plate_iron>,
    <botania:tornadorod>,
    <botania:brewery>,
    <botania:flighttiara>,
    <rustic:condenser>,
    <rustic:retort>,
    <rustic:condenser_advanced>,
    <rustic:retort_advanced>,
    <botania:bloodpendant>,
    <botania:enderhand>,
    <waystones:warp_stone>,
    <extraalchemy:empty_ring>,
    <botania:manaresource:14>,
    <dimdoors:unstable_dimensional_door>,
    <dimdoors:woven_world_thread_helmet>,
    <dimdoors:woven_world_thread_chestplate>,
    <dimdoors:woven_world_thread_leggings>,
    <dimdoors:woven_world_thread_boots>,
    <dimdoors:rift_blade>,
    <mahoutsukai:mortar>,
    <mahoutsukai:pestle>,
    <mahoutsukai:mortar_and_pestle>,
    <mahoutsukai:hammer>,
    <mahoutsukai:dagger>,
    <mahoutsukai:spell_cloth>,
    <mahoutsukai:mystic_code>,
    <mahoutsukai:mystic_code_first_sorcery>,
    <dimdoors:gold_dimensional_door>,
    <dimdoors:iron_dimensional_door>,
    <dimdoors:oak_dimensional_door>,
    <dimdoors:dimensional_trapdoor>,
    <dimdoors:rift_signature>,
    <dimdoors:stabilized_rift_signature>,
    <dimdoors:rift_stabilizer>,
    <bloodmagic:incense_altar>,
    <mana_wizardry:wand_flowers>,
    <mana_wizardry:wand_livingwood>,
    <mana_wizardry:wand_dreamwood>,
    <extrautils2:passivegenerator:4>,
    <extrautils2:passivegenerator:7>,
    <extrautils2:passivegenerator:8>,
    <extrautils2:passivegenerator:2>,
    <extrautils2:passivegenerator:3>,
    <extrautils2:machine>,
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <bloodmagic:teleposition_focus:3>,
    <bloodmagic:teleposition_focus:2>,
    <bloodmagic:teleposer>,
    <tconstruct:throwball:1>,
    <bloodmagic:alchemy_table>    
]as IItemStack[];

for i, item in items {
    mods.jei.JEI.removeAndHide(items[i]);
}

//REMOVAL BY NAME

//Tinkers' Construct
recipes.removeByRecipeName("tconstruct:smeltery/grout");
recipes.removeByRecipeName("tconstruct:smeltery/grout_simple");

//Mahou Tsukai Hammer
recipes.removeByRecipeName("mahoutsukai:powdered_quartz");
recipes.removeByRecipeName("mahoutsukai:powdered_iron");
recipes.removeByRecipeName("mahoutsukai:powdered_diamond");
recipes.removeByRecipeName("mahoutsukai:powdered_ender");
recipes.removeByRecipeName("mahoutsukai:powdered_gold");
recipes.removeByRecipeName("mahoutsukai:powdered_emerald");
recipes.removeByRecipeName("mahoutsukai:powdered_eye");

//Mahou Tsukai Mortar and Pestle
recipes.removeByRecipeName("mahoutsukai:powdered_quartz_2");
recipes.removeByRecipeName("mahoutsukai:powdered_iron_2");
recipes.removeByRecipeName("mahoutsukai:powdered_diamond_2");
recipes.removeByRecipeName("mahoutsukai:powdered_ender_2");
recipes.removeByRecipeName("mahoutsukai:powdered_gold_2");
recipes.removeByRecipeName("mahoutsukai:powdered_emerald_2");
recipes.removeByRecipeName("mahoutsukai:powdered_eye_2");

mods.bloodmagic.BloodAltar.removeRecipe(<minecraft:ender_pearl>);
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:teleposition_focus>);

//BOTANIA
mods.botania.Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));

//EMBERS
mods.embers.Alchemy.remove(<embers:nonbeliever_amulet>);
mods.embers.Alchemy.remove(<embers:blasting_core>);