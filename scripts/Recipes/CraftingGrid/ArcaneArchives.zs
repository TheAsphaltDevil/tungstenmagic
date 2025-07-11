import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("gemTable", "GEMCUTTERTABLE@2", 300, [<aspect:ignis>*3], <arcanearchives:gemcutters_table>,[
    [<ore:blockMarble>, <minecraft:stone:3>, <ore:paneGlass>, <ore:paper>], 
    [<ore:logWood>, <ore:workbench>, <ore:logWood>], 
    [<arcanearchives:raw_quartz>, <ore:logWood>, <arcanearchives:raw_quartz>]
]);