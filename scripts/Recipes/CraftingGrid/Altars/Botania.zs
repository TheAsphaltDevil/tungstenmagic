import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;

import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.astralsorcery.Altar;




val gaiaPylonInputs = [
    [<dimdoors:world_thread>,<dimdoors:world_thread>,<dimdoors:world_thread>],
    [<dimdoors:world_thread>,<botania:pylon>,<dimdoors:world_thread>],
    [<dimdoors:world_thread>,<dimdoors:world_thread>,<dimdoors:world_thread>],
] as IItemStack[][];
recipes.addShaped(null,<botania:pylon:2>,gaiaPylonInputs,null,null);


mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("corporeafunnel", "CORPOREAAUTOCRAFTING@2", 10, [<aspect:aer>, <aspect:ordo>*2], <botania:corporeafunnel>, [<minecraft:dropper>, <botania:corporeaspark>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("corporeainterceptor", "CORPOREAAUTOCRAFTING@2", 10, [<aspect:aer>, <aspect:ordo>*2], <botania:corporeainterceptor>, [<ore:blockRedstone>, <botania:corporeaspark>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("corporearetainer", "CORPOREAAUTOCRAFTING@2", 10, [<aspect:aer>, <aspect:ordo>*2], <botania:corporearetainer>, [<ore:chestWood>, <botania:corporeaspark>]);