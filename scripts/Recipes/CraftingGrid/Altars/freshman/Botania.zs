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

In this file are all the recipes for
freshman year (luminous table and arcane workbench)
for Botania.

You only need one set of inputs and outputs. The
script will handle adding them to both crafting
tables for you.

**************************************************/

//The list of output items for each recipe.
val workbenchOutputs = [
    <botania:forestdrum:2>,
    <botania:forestdrum>,
    <botania:incenseplate>,
    <botania:spreader>,
    <botania:opencrate>,
    <botania:distributor>,
    <botania:pump>,
    <botania:hourglass>,
    <botania:teruterubozu>,
    <botania:turntable>,
    <botania:avatar>,
    <botania:sextant>,
    <botania:obediencestick>,
    <botania:corporeaindex>,
    <botania:corporeacrystalcube>,
    <botania:pool>,
    <botania:altar>,
    <botania:runealtar>,
    <botania:manavoid>,
    <botania:manadetector>,
    <botania:endereyeblock>,
    <botania:platform>,
    <botania:foresteye>,
    <botania:pylon>,
    <botania:redstringcomparator>,
    <botania:redstringfertilizer>,
    <botania:redstringdispenser>,
    <botania:redstringcontainer>,
    <botania:redstringrelay>,
    <botania:redstringinterceptor>,
    <botania:rfgenerator>,
    <botania:bellows>,
    <botania:alfheimportal>
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
        <ore:livingwood>, <ore:leather>, <ore:livingwood>,
        <ore:livingwood>, <botania:grasshorn:1>, <ore:livingwood>,
        <ore:livingwood>, <ore:leather>, <ore:livingwood>
    ],
    [
        <ore:livingwood>, <ore:leather>, <ore:livingwood>,
        <ore:livingwood>, <botania:grasshorn>, <ore:livingwood>,
        <ore:livingwood>, <ore:leather>, <ore:livingwood>
    ],
    [
        <ore:livingwood>, <botania:livingwood0slab>, <botania:livingwood0slab>,
        null, null, null,
        null, null, null
    ],
    [
        <ore:livingwood>, <ore:livingwood>, <ore:livingwood>,
        <ore:ingotGold>, null, null,
        <ore:livingwood>, <ore:livingwood>, <ore:livingwood>
    ],
    [
        <botania:livingwood:1>, <botania:livingwood:1>, <botania:livingwood:1>,
        <botania:livingwood:1>, null, <botania:livingwood:1>,
        <botania:livingwood:1>, null, <botania:livingwood:1>
    ],
    [
        <ore:livingrock>, <ore:livingrock>, <ore:livingrock>,
        <ore:ingotManasteel>, null, <ore:ingotManasteel>,
        <ore:livingrock>, <ore:livingrock>, <ore:livingrock>
    ],
    [
        <ore:livingrock>, <ore:livingrock>, <ore:livingrock>,
        <ore:ingotManasteel>, <minecraft:bucket>, <ore:ingotManasteel>,
        <ore:livingrock>, <ore:livingrock>, <ore:livingrock>
    ],
    [
        <ore:ingotGold>, <botania:managlass>, <ore:ingotGold>,
        <ore:dustRedstone>, <ore:ingotManasteel>, <ore:dustRedstone>,
        <ore:ingotGold>, <botania:managlass>, <ore:ingotGold>
    ],
    [
        <ore:clothManaweave>, null, null,
        <ore:clothManaweave>, null, null,
        <minecraft:double_plant>, null, null
    ],
    [
        <ore:livingwood>, <ore:livingwood>, <ore:livingwood>,
        <ore:livingwood>, <minecraft:sticky_piston>, <ore:livingwood>,
        <ore:livingwood>, <ore:livingwood>, <ore:livingwood>
    ],
    [
        null, <ore:livingwood>, null,
        <ore:livingwood>, <ore:manaDiamond>, <ore:livingwood>,
        <ore:livingwood>, null, <ore:livingwood>
    ],
    [
        null, <ore:livingwoodTwig>, <ore:ingotManasteel>,
        null, <ore:livingwoodTwig>, <ore:livingwoodTwig>,
        <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>
    ],
    [
        null, null, <ore:ingotManasteel>,
        null, <ore:livingwoodTwig>, null,
        <ore:livingwoodTwig>, null, null
    ],
    [
        <ore:bEnderAirBottle>, <ore:obsidian>, <ore:bEnderAirBottle>,
        <ore:obsidian>, <botania:corporeaspark>, <ore:obsidian>,
        <ore:elvenDragonstone>, <ore:obsidian>, <ore:elvenDragonstone>
    ],
    [
        <botania:corporeaspark>, null, null,
        <botania:elfglass>, null, null,
        <ore:dreamwood>, null, null
    ],
    [
        null, null, null,
        <botania:livingrock>, null, <botania:livingrock>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <minecraft:stone_slab:3>, <botania:petal>, <minecraft:stone_slab:3>,
        null, <minecraft:cobblestone>, null,
        <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        null, <botania:manaresource:1>, null,
        <botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <minecraft:obsidian>, null, <minecraft:obsidian>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <minecraft:redstone>, <botania:livingrock>, <minecraft:redstone>,
        <botania:livingrock>, <minecraft:comparator>, <botania:livingrock>,
        <minecraft:redstone>, <botania:livingrock>, <minecraft:redstone>,
    ],
    [
        <minecraft:redstone>, <minecraft:ender_eye>, <minecraft:redstone>,
        <minecraft:ender_eye>, <minecraft:obsidian>, <minecraft:ender_eye>,
        <minecraft:redstone>, <minecraft:ender_eye>, <minecraft:redstone>,
    ],
    [
        null, null, null,
        <botania:livingwood>, <botania:livingwood>, <botania:livingwood>,
        <botania:livingwood>, <botania:manaresource:1>, <botania:livingwood>,
    ],
    [
        <botania:manaresource>, <botania:livingrock>, <botania:manaresource>,
        <botania:livingrock>, <minecraft:ender_eye>, <botania:livingrock>,
        <botania:manaresource>, <botania:livingrock>, <botania:manaresource>,
    ],
    [
        null, <minecraft:gold_ingot>, null,
        <botania:manaresource>, <botania:manaresource:2>, <botania:manaresource>,
        null, <minecraft:gold_ingot>, null,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <botania:livingrock>, <minecraft:comparator>, <botania:manaresource:12>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <botania:livingrock>, <botania:fertilizer>, <botania:manaresource:12>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <botania:livingrock>, <minecraft:dispenser>, <botania:manaresource:12>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <botania:livingrock>, <minecraft:chest>, <botania:manaresource:12>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <botania:livingrock>, <botania:spreader>, <botania:manaresource:12>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
        <botania:livingrock>, <minecraft:stone_button>, <botania:manaresource:12>,
        <botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
    ],
    [
        <botania:livingrock>, <minecraft:redstone_block>, <botania:livingrock>,
        <minecraft:redstone_block>, <botania:manaresource>, <minecraft:redstone_block>,
        <botania:livingrock>, <minecraft:redstone_block>, <botania:livingrock>,
    ],
    [
        <botania:livingwood0slab>, <botania:livingwood0slab>, <botania:livingwood0slab>,
        <botania:rune:3>, <minecraft:leather>, null,
        <botania:livingwood0slab>, <botania:livingwood0slab>, <botania:livingwood0slab>,
    ]
] as IIngredient[][];

val workbenchNames = [
    "bwb1",
    "bwb2",
    "bwb3",
    "bwb4",
    "bwb5",
    "bwb6",
    "bwb7",
    "bwb8",
    "bwb9",
    "bwba",
    "bwbb",
    "bwbc",
    "bwbd",
    "bwbe",
    "bwbf",
    "bwb10",
    "bwb11",
    "bwb12",
    "bwb13",
    "bwb14",
    "bwb15",
    "bwb16",
    "bwb17",
    "bwb18",
    "bwb19",
    "bwb1a",
    "bwb1b",
    "bwb1c",
    "bwb1d",
    "bwb1e",
    "bwb1f",
    "bwb20",
] as string[];

val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/bwb1",
    "tungstenmagic:shaped/internal/altar/bwb2",
    "tungstenmagic:shaped/internal/altar/bwb3",
    "tungstenmagic:shaped/internal/altar/bwb4",
    "tungstenmagic:shaped/internal/altar/bwb5",
    "tungstenmagic:shaped/internal/altar/bwb6",
    "tungstenmagic:shaped/internal/altar/bwb7",
    "tungstenmagic:shaped/internal/altar/bwb8",
    "tungstenmagic:shaped/internal/altar/bwb9",
    "tungstenmagic:shaped/internal/altar/bwba",
    "tungstenmagic:shaped/internal/altar/bwbb",
    "tungstenmagic:shaped/internal/altar/bwbc",
    "tungstenmagic:shaped/internal/altar/bwbd",
    "tungstenmagic:shaped/internal/altar/bwbe",
    "tungstenmagic:shaped/internal/altar/bwbf",
    "tungstenmagic:shaped/internal/altar/bwb10",
    "tungstenmagic:shaped/internal/altar/bwb11",
    "tungstenmagic:shaped/internal/altar/bwb12",
    "tungstenmagic:shaped/internal/altar/bwb13",
    "tungstenmagic:shaped/internal/altar/bwb14",
    "tungstenmagic:shaped/internal/altar/bwb15",
    "tungstenmagic:shaped/internal/altar/bwb16",
    "tungstenmagic:shaped/internal/altar/bwb17",
    "tungstenmagic:shaped/internal/altar/bwb18",
    "tungstenmagic:shaped/internal/altar/bwb19",
    "tungstenmagic:shaped/internal/altar/bwb1a",
    "tungstenmagic:shaped/internal/altar/bwb1b",
    "tungstenmagic:shaped/internal/altar/bwb1c",
    "tungstenmagic:shaped/internal/altar/bwb1d",
    "tungstenmagic:shaped/internal/altar/bwb1e",
    "tungstenmagic:shaped/internal/altar/bwb1f",
    "tungstenmagic:shaped/internal/altar/bwb20",
] as string[];

val workbenchKeys = [
    "BOTANIADRUMS",
    "BOTANIADRUMS",
    "BOTANIAINCENSE",
    "MANASPREADER@2",
    "OPENCRATE",
    "MANAMANIPULATION",
    "MANAMINECART",
    "HOVERINGHOURGLASS",
    "TERUTERUBOZU",
    "SPREADERTURNTABLE",
    "LIVINGWOODAVATAR",
    "WORLDSHAPERSEXTANT",
    "FLORALSTICK",
    "CORPOREAINDEX@2",
    "CORPOREACUBE@2",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
] as string[];

for i, item in workbenchInputs {

    mods.astralsorcery.Altar.addDiscoveryAltarRecipe(astralworkbenchNames[i], workbenchOutputs[i], 200, 200, workbenchInputs[i]);

    //This codeblock converts luminous crafting table formatting to arcane workbench formatting.
    val tempArray = [
        [workbenchInputs[i][0],workbenchInputs[i][1],workbenchInputs[i][2]],
        [workbenchInputs[i][3],workbenchInputs[i][4],workbenchInputs[i][5]],
        [workbenchInputs[i][6],workbenchInputs[i][7],workbenchInputs[i][8]],
    ] as IIngredient[][];

    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(workbenchNames[i], workbenchKeys[i], 20, [<aspect:aer>*2, <aspect:ignis>*2, <aspect:ordo>*2], workbenchOutputs[i], tempArray);
}