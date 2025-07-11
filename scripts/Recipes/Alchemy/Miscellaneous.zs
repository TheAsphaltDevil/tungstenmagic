import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Crucible;

//Thaumcraft cruible
//mods.thaumcraft.Crucible.registerRecipe(String name, String researchKey, IItemStack output, IIngredient input, CTAspectStack[] aspects);
//mods.thaumcraft.Crucible.registerRecipe("name", "", , , [<aspect:>*]);

mods.thaumcraft.Crucible.registerRecipe("redstone", "", <minecraft:redstone>, <minecraft:gravel>, [
    <aspect:potentia>*12
]);
mods.thaumcraft.Crucible.registerRecipe("brownmushroom", "", <minecraft:brown_mushroom>, <minecraft:yellow_flower>, [
    <aspect:vitium>*10,
]);
mods.thaumcraft.Crucible.registerRecipe("redmushroom", "", <minecraft:red_mushroom>, <minecraft:red_flower>, [
    <aspect:vitium>*10,
]);
mods.thaumcraft.Crucible.registerRecipe("diamond", "", <minecraft:diamond>, <minecraft:coal>, [
    <aspect:desiderium>*20,
    <aspect:vitreus>*20
]);
mods.thaumcraft.Crucible.registerRecipe("stone", "", <minecraft:stone>, <minecraft:dirt>, [
    <aspect:terra>*5
]);
mods.thaumcraft.Crucible.registerRecipe("sapling", "", <minecraft:sapling>, <minecraft:stick>, [
    <aspect:herba>*10
]);
mods.thaumcraft.Crucible.registerRecipe("gravel", "", <minecraft:gravel>, <minecraft:dirt>, [
    <aspect:terra>*5,
    <aspect:perditio>*2
]);
mods.thaumcraft.Crucible.registerRecipe("sand", "", <minecraft:sand>, <minecraft:dirt>, [
    <aspect:terra>*5,
    <aspect:perditio>*5
]);
mods.thaumcraft.Crucible.registerRecipe("clay", "", <minecraft:clay>, <minecraft:dirt>, [
    <aspect:terra>*15,
    <aspect:aqua>*15
]);
mods.thaumcraft.Crucible.registerRecipe("quicksoil", "", <aether_legacy:quicksoil>, <minecraft:sand>, [
    <aspect:motus>
]);

mods.thaumcraft.Crucible.registerRecipe("marble", "", <astralsorcery:blockmarble>, <minecraft:stone>, [
    <aspect:lux>
]);

mods.thaumcraft.Crucible.registerRecipe("resogem", "", <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent>, [
    <aspect:lux>*10, <aspect:alienis>*10
]);

mods.thaumcraft.Crucible.registerRecipe("illpowder", "", <astralsorcery:itemusabledust>, <minecraft:glowstone_dust>, [
    <aspect:lux>*10, <aspect:alienis>*10
]);

mods.thaumcraft.Crucible.registerRecipe("starmetal", "", <astralsorcery:itemcraftingcomponent:1>, <minecraft:iron_ingot>, [
    <aspect:lux>*10, <aspect:alienis>*10
]);

mods.thaumcraft.Crucible.registerRecipe("cursedEarth", "", <extrautils2:cursedearth>, <minecraft:grass>, [
    <aspect:mortuus>*250,
    <aspect:fabrico>*250,
    <aspect:praecantatio>*250,
    <aspect:exanimis>*250
]);

mods.thaumcraft.Crucible.registerRecipe("coalCoke", "", <chisel:block_coal_coke>, <minecraft:coal_block>, [
    <aspect:potentia>*5
]);

mods.thaumcraft.Crucible.registerRecipe("ancientCuriosity", "EXTRACURIOSITIES@2", <thaumcraft:curio:2>, <minecraft:pumpkin>, [
    <aspect:cognitio>*50
]);


mods.thaumcraft.Crucible.registerRecipe("twistedCuriosity", "EXTRACURIOSITIES@2", <thaumcraft:curio:5>, <thaumcraft:tube>, [
    <aspect:vacuos>*50
]);

mods.thaumcraft.Crucible.registerRecipe("modularium", "MODULARIUM", <modularmachinery:itemmodularium>, <embers:ingot_aluminum>, [
    <aspect:potentia>*4,
    <aspect:desiderium>*3,
    <aspect:lux>*1
]);