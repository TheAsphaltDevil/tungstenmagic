import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;

//The_AsphaltDevil
/****************************************************

Oredict is a system for modded minecraft to identify
and eliminate duplicate items (such as your pack having
two types of copper, for example).

Unification is done in the UniDict mod config,
and adding oredict tags to items is done in this
file as needed.

Some code blocks also contain the list of mods that
use the oredict key for an item of theirs.

****************************************************/

//oreDictEnt.add();

//Sulphur (betweenlands, soot)
val oreDictEntSulfur = <ore:dustSulfur>;
oreDictEntSulfur.add(<thebetweenlands:items_misc:18>);
furnace.addRecipe(<soot:sulfur_clump>, <thebetweenlands:items_misc:18>);

//Pearls
val oreDictEntPearl = <ore:gemPearl>;
oreDictEntPearl.add(<treasure2:white_pearl>);

//Sapphire
val oreDictEntSapphire = <ore:sapphire>;
oreDictEntSapphire.add(<iceandfire:sapphire_gem>);

//Tallow (thaumcraft, rustic, quark)
val oreDictEntWax = <ore:wax>;
oreDictEntWax.add(<quark:tallow>);
oreDictEntWax.add(<thaumcraft:tallow>);