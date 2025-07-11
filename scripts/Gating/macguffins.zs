import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.embers.Alchemy;
import mods.astralsorcery.Altar;


val toRemove = [
    <iceandfire:dragonforge_ice_input>,
    <iceandfire:dragonforge_fire_input>,
    <botania:missilerod>
]as IItemStack[];

for i, item in toRemove {
    recipes.remove(item, false);
}

mods.embers.Alchemy.remove(<embers:tyrfing>);

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/capebase");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_shiftstar");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enchantment_amulet_craft");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/crystaltool_sword");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/crystaltool_axe");
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");


val infusionOutputs =[
    <aether_legacy:dungeon_key>,
    <aether_legacy:dungeon_key:1>,
    <aether_legacy:dungeon_key:2>,
    <mowziesmobs:wrought_helmet>,
    <mowziesmobs:barako_mask>,
    <minecraft:nether_star>,
    <thebetweenlands:chirobarb_erupter>,
    <thebetweenlands:bark_amulet>,
    <thebetweenlands:ring_of_dispersion>,
    <thebetweenlands:ring_of_recruitment>,
    <thebetweenlands:ring_of_summoning>,
    <thebetweenlands:rune_door_key>,
    <twilightforest:lamp_of_cinders>,
    <minecraft:elytra>
] as IItemStack[];

val infusionInputs =[
    <thaumicaugmentation:key>,
    <thaumicaugmentation:key>,
    <thaumicaugmentation:key>,
    <minecraft:iron_helmet>,
    <minecraft:golden_helmet>,
    <botania:spark>,
    <minecraft:arrow>,
    <thaumcraft:baubles>,
    <thaumcraft:baubles:1>,
    <thaumcraft:baubles:1>,
    <thaumcraft:baubles:1>,
    <thaumicaugmentation:key>,
    <minecraft:gold_block>,
    <minecraft:feather>
] as IItemStack[];

val infusionSides =[
    [<minecraft:nether_wart>,<astralsorcery:itemcraftingcomponent>,<tconstruct:pattern>,<ebwizardry:magic_crystal>,<botania:manaresource:2>],
    [<minecraft:nether_wart>,<astralsorcery:itemcraftingcomponent>,<tconstruct:pattern>,<ebwizardry:magic_crystal>,<botania:manaresource:2>],
    [<minecraft:nether_wart>,<astralsorcery:itemcraftingcomponent>,<tconstruct:pattern>,<ebwizardry:magic_crystal>,<botania:manaresource:2>],
    [<minecraft:nether_wart>,<astralsorcery:itemcraftingcomponent>,<tconstruct:pattern>,<ebwizardry:magic_crystal>,<botania:manaresource:2>],
    [<minecraft:nether_wart>,<astralsorcery:itemcraftingcomponent>,<tconstruct:pattern>,<ebwizardry:magic_crystal>,<botania:manaresource:2>],
    [<minecraft:nether_wart>,<astralsorcery:itemcraftingcomponent>,<tconstruct:pattern>,<ebwizardry:magic_crystal>,<botania:manaresource:2>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>],
    [<astralsorcery:itemcraftingcomponent:4>,<embers:ingot_dawnstone>,<bloodmagic:arcane_ashes>,<tconstruct:materials>,<ebwizardry:grand_crystal>,<botania:manaresource:1>]
] as IIngredient[][];

val infusionAspects = [
    [<aspect:aer>*250,<aspect:bestia>*250,<aspect:terra>*250,<aspect:victus>*250,<aspect:aversio>*250],
    [<aspect:aer>*250,<aspect:bestia>*250,<aspect:humanus>*250,<aspect:volatus>*250],
    [<aspect:aer>*250,<aspect:bestia>*250,<aspect:spiritus>*250,<aspect:ignis>*250,<aspect:aversio>*250],
    [<aspect:bestia>*250,<aspect:exanimis>*250,<aspect:praemunio>*250,<aspect:aversio>*250,<aspect:victus>*250],
    [<aspect:humanus>*250,<aspect:fabrico>*250,<aspect:victus>*250,<aspect:aer>*250,<aspect:lux>*250],
    [<aspect:exanimis>*250,<aspect:spiritus>*250,<aspect:terra>*250,<aspect:ignis>*250,<aspect:perditio>*250],
    [<aspect:bestia>*250,<aspect:aqua>*250,<aspect:tenebrae>*250,<aspect:aversio>*250,<aspect:volatus>*250],
    [<aspect:terra>*250,<aspect:victus>*250,<aspect:tenebrae>*250,<aspect:spiritus>*250,<aspect:aversio>*250],
    [<aspect:bestia>*250,<aspect:tenebrae>*250,<aspect:perditio>*250,<aspect:terra>*250,<aspect:aqua>*250],
    [<aspect:praecantatio>*250,<aspect:spiritus>*250,<aspect:cognitio>*250,<aspect:vitium>*250,<aspect:desiderium>*250],
    [<aspect:exanimis>*250,<aspect:humanus>*250,<aspect:aqua>*250,<aspect:tenebrae>*250,<aspect:mortuus>*250],
    [<aspect:machina>*250,<aspect:spiritus>*250,<aspect:aqua>*250,<aspect:tenebrae>*250,<aspect:cognitio>*250],
    [<aspect:lux>*250,<aspect:instrumentum>*250,<aspect:vacuos>*250,<aspect:herba>*250,<aspect:ignis>*250],
    [<aspect:humanus>*250,<aspect:volatus>*250,<aspect:alienis>*250,<aspect:desiderium>*250,<aspect:motus>*250]
] as CTAspectStack[][];

val infusionNames = [
    "mainlineProgressionInfusion",
    "mainlineProgressionInfusion1",
    "mainlineProgressionInfusion2",
    "mainlineProgressionInfusion3",
    "mainlineProgressionInfusion4",
    "mainlineProgressionInfusion5",
    "mainlineProgressionInfusion6",
    "mainlineProgressionInfusion7",
    "mainlineProgressionInfusion8",
    "mainlineProgressionInfusion9",
    "mainlineProgressionInfusiona",
    "mainlineProgressionInfusionb",
    "mainlineProgressionInfusionc",
    "mainlineProgressionInfusiond"
] as string[];

//mods.thaumcraft.Infusion.registerRecipe(String name, String research, IItemStack output, int instability, CTAspectStack[] aspects, IIngredient centralItem, IIngredient[] recipe);
//mods.thaumcraft.Infusion.registerRecipe("name", "", output, instability, [aspects], Item, recipe);
for k, item in infusionOutputs {
    mods.thaumcraft.Infusion.registerRecipe(infusionNames[k], "", infusionOutputs[k], 3, infusionAspects[k], infusionInputs[k], infusionSides[k]);
}