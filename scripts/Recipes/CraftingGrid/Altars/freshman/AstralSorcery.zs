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




/**************************************************

Astral Sorcery Recipes

**************************************************/

//The list of output items for each recipe.

val workbenchOutputs = [
    <astralsorcery:blockblackmarble>*8,
    <astralsorcery:itemjournal>
] as IItemStack[];


//Crafting items can be arranged visually as they appear in game, like so:

/*
[
    null, null, null,
    null, null, null,
    null, null, null,
]
*/

val workbenchInputs = [
    [
        <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>,
        <ore:stoneMarble>, <minecraft:coal>, <ore:stoneMarble>,
        <ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>,
    ],
    [
        null, <thaumcraft:celestial_notes:1>, null,
        <thaumcraft:celestial_notes:2>, <minecraft:book>, <thaumcraft:celestial_notes:3>,
        null, <thaumcraft:celestial_notes:4>, null,
    ],
] as IIngredient[][];

val workbenchNames = [
    "sootyMarble",
    "astralTome"
] as string[];

val workbenchKeys = [
    "",
    "",
] as string[];

for i, item in workbenchInputs {

    //This codeblock converts luminous crafting table formatting to arcane workbench formatting.
    val tempArray = [
        [workbenchInputs[i][0],workbenchInputs[i][1],workbenchInputs[i][2]],
        [workbenchInputs[i][3],workbenchInputs[i][4],workbenchInputs[i][5]],
        [workbenchInputs[i][6],workbenchInputs[i][7],workbenchInputs[i][8]],
    ] as IIngredient[][];

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(workbenchNames[i], workbenchKeys[i], 5, [<aspect:aer>*2, <aspect:ignis>*2, <aspect:ordo>*2], workbenchOutputs[i], tempArray);
}
