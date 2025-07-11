import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.tconstruct.Melting;
import mods.embers.Stamper;

/*********************************************************

This code gets void metal and dawnstone items properly
integrated to Tinkers' Construct and embers' Stamper.

*********************************************************/

//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
mods.tconstruct.Melting.addRecipe(<liquid:dawnstone> * 144,<embers:ingot_dawnstone>);
mods.tconstruct.Melting.addRecipe(<liquid:voidmetal> * 144,<thaumcraft:plate:3>);
mods.tconstruct.Melting.addRecipe(<liquid:voidmetal> * 576,<mystgears:gear_void>);

//mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addTableRecipe(<thaumcraft:plate:3>, <tconstruct:cast_custom:3>, <liquid:voidmetal>, 144);
mods.tconstruct.Casting.addTableRecipe(<mystgears:gear_void>, <tconstruct:cast_custom:4>, <liquid:voidmetal>, 576);

mods.embers.Stamper.add(<thaumcraft:plate:3>, <liquid:voidmetal>, <embers:stamp_plate>);
mods.embers.Stamper.add(<mystgears:gear_void>, <liquid:voidmetal>, <embers:stamp_gear>);
