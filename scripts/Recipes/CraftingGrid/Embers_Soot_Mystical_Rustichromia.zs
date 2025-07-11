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




//VANILLA CRAFTING
val trapdoorBinInputs = [
    <embers:bin>,
    <minecraft:iron_trapdoor>
] as IItemStack[];
recipes.addShapeless(null,<soot:redstone_bin>,trapdoorBinInputs,null,null);



//ARCANE WORKBENCH SHAPELESS
//mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(String name, String research, int vis, CTAspectStack[] aspectList, IItemStack output, IIngredient[][] input);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("fluidExtractor", "ITEMFLUIDPIPES@2", 5, [<aspect:aer>], <embers:pump>*8, [<thaumcraft:bellows>, <embers:pipe>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("itemExtractor", "ITEMFLUIDPIPES@2", 5, [<aspect:aer>], <embers:item_pump>*8, [<thaumcraft:bellows>, <embers:item_pipe>]);