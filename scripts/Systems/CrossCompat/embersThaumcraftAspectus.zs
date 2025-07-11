#loader contenttweaker
import mods.contenttweaker.Commands;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.MutableItemStack;

//for the tungsten magic modpack
//The other aspecti are handled by changing existing aspecti with a resource pack.

var zsItem = VanillaFactory.createItem("aspectus_terra");
zsItem.maxStackSize = 1;
zsItem.rarity = "rare";
zsItem.register();