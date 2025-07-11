import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.embers.Stamper;
import mods.embers.Melter;



//The_AsphaltDevil
/*********************************************************

This file gets the additional fluids working with the
stamper and melter from embers.

*********************************************************/

val fluidsTC = [
    <liquid:ardite>*144,
    <liquid:cobalt>*144,
    <liquid:alubrass>*144,
    <liquid:pigiron>*144,
    <liquid:knightslime>*144,
    <liquid:manyullyn>*144,
    <liquid:starmetal>*144,
    <liquid:manasteel>*144,
    <liquid:elementium>*144,
    <liquid:terrasteel>*144,
    <liquid:thaumium>*144,
    <liquid:voidmetal>*144,
    <liquid:octine>*144,
    <liquid:syrmorite>*144,

]as ILiquidStack[];

val ingotsTC = [
    <tconstruct:ingots:1>,
    <tconstruct:ingots>,
    <tconstruct:ingots:5>,
    <tconstruct:ingots:4>,
    <tconstruct:ingots:3>,
    <tconstruct:ingots:2>,
    <astralsorcery:itemcraftingcomponent:1>,
    <botania:manaresource>,
    <botania:manaresource:7>,
    <botania:manaresource:4>,
    <thaumcraft:ingot>,
    <thaumcraft:ingot:1>,
    <thebetweenlands:octine_ingot>,
    <thebetweenlands:items_misc:11>,
] as IItemStack[];

val oresTC = [
    <tconstruct:ore:1>,
    <tconstruct:ore>
] as IItemStack[];

for i, item in fluidsTC{
    mods.embers.Stamper.add(ingotsTC[i], fluidsTC[i], <embers:stamp_bar>, null);
}
for j, item in ingotsTC{
    mods.embers.Melter.add(fluidsTC[j], ingotsTC[j], null);
}
for k, item in oresTC{
    mods.embers.Melter.add(fluidsTC[k] *288, oresTC[k], null);
}

//mods.embers.Melter.add(outputfluid, input, null);
mods.embers.Melter.add(<liquid:purpleslime>*250, <tconstruct:edible:2>, null);
mods.embers.Melter.add(<liquid:purpleslime>*2250, <tconstruct:slime:2>, null);
mods.embers.Melter.add(<liquid:purpleslime>*1000, <tconstruct:slime_congealed:2>, null);

mods.embers.Melter.add(<liquid:blueslime>*250, <tconstruct:edible:1>, null);
mods.embers.Melter.add(<liquid:blueslime>*2250, <tconstruct:slime:1>, null);
mods.embers.Melter.add(<liquid:blueslime>*1000, <tconstruct:slime_congealed:1>, null);

mods.embers.Melter.add(<liquid:iron>*432, <thaumcraft:cluster>, null);   //iron
mods.embers.Melter.add(<liquid:gold>*432, <thaumcraft:cluster:1>, null); //gold
mods.embers.Melter.add(<liquid:copper>*432, <thaumcraft:cluster:2>, null); //copper
mods.embers.Melter.add(<liquid:tin>*432, <thaumcraft:cluster:3>, null); //tin
mods.embers.Melter.add(<liquid:silver>*432, <thaumcraft:cluster:4>, null); //silver
mods.embers.Melter.add(<liquid:lead>*432, <thaumcraft:cluster:5>, null); //lead