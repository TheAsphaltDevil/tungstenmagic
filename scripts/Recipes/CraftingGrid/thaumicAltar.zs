import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.astralsorcery.Altar;



//The_AsphaltDevil
/****************************************************

This file adds most thaumcraft and
thaumic augmentation recipes to the luminous
crafting table.

****************************************************/

val astralOutputs = [
    <thaumicaugmentation:glass_tube>*8,
    <thaumicaugmentation:vis_regenerator>,
    <thaumicaugmentation:material>,
    <thaumcraft:thaumometer>,
    <thaumcraft:seal>*3,
    <thaumcraft:mind>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:filter>*2,
    <thaumcraft:mechanism_simple>,
    <thaumcraft:mechanism_complex>,
    <thaumcraft:vis_resonator>,
    <thaumcraft:fabric>,
    <thaumcraft:jar_normal>,
    <thaumcraft:jar_void>,
    <thaumcraft:tube>*8,
    <thaumcraft:tube_valve>,
    <thaumcraft:tube_filter>,
    <thaumcraft:tube_buffer>,
    <thaumcraft:alembic>,
    <thaumcraft:smelter_vent>,
    <thaumcraft:smelter_aux>,
    <thaumcraft:smelter_basic>,
    <thaumcraft:smelter_thaumium>,
    <thaumcraft:metal_alchemical>*2,
    <thaumcraft:smelter_void>,
    <thaumcraft:bellows>,
    <thaumcraft:centrifuge>,
    <thaumcraft:levitator>,
    <thaumcraft:lamp_arcane>,
    <thaumcraft:arcane_ear>,
    <thaumcraft:arcane_ear_toggle>
] as IItemStack[];



val astralworkbenchInputs = [
    [
        null,
        <thaumcraft:nugget:5>,
        null,
        <ore:blockGlass>,
        <thaumcraft:plate:1>,
        <ore:blockGlass>,
        null,
        <thaumcraft:nugget:8>,
        null
    ],

    [
        <thaumcraft:plank_greatwood>,
        <minecraft:iron_bars>,
        <thaumcraft:plank_greatwood>,
        <thaumcraft:plate:1>,
        <thaumicaugmentation:material>,
        <thaumcraft:plate:1>,
        <thaumcraft:plank_greatwood>,
        <thaumcraft:mechanism_simple>,
        <thaumcraft:plank_greatwood>
    ],

    [
        <thaumcraft:plank_silverwood>,
        <thaumcraft:leaves_silverwood>,
        <thaumcraft:plank_silverwood>,
        <thaumcraft:leaves_silverwood>,
        <thaumcraft:filter>,
        <thaumcraft:leaves_silverwood>,
        <thaumcraft:plank_silverwood>,
        <thaumcraft:leaves_silverwood>,
        <thaumcraft:plank_silverwood>
    ],

    [
        null,
        <minecraft:gold_ingot>,
        null,
        <minecraft:gold_ingot>,
        <ore:paneGlass>,
        <minecraft:gold_ingot>,
        null,
        <minecraft:gold_ingot>,
        null
    ],

    [
        <minecraft:clay_ball>,
        <thaumcraft:tallow>,
        <botania:dye:14>,
        <thaumcraft:nitor_cyan>,
        null,
        null,
        null,
        null,
        null
    ],

    [
        null,
        <ore:paneGlass>,
        null,
        <ore:paneGlass>,
        <thaumcraft:mechanism_simple>,
        <ore:paneGlass>,
        <thaumcraft:plate>,
        <minecraft:comparator>,
        <thaumcraft:plate>
    ],

    [
        null,
        <ore:paneGlass>,
        null,
        <thaumcraft:plate>,
        <thaumcraft:nugget:10>,
        <thaumcraft:plate>,
        null,
        <ore:paneGlass>,
        null
    ],

    [
        null,
        null,
        null,
        <minecraft:gold_ingot>,
        <thaumcraft:plank_silverwood>,
        <minecraft:gold_ingot>,
        null,
        null,
        null
    ],

    [
        null,
        <thaumcraft:plate>,
        null,
        <thaumcraft:plate:1>,
        <ore:stickWood>,
        <thaumcraft:plate:1>,
        null,
        <thaumcraft:plate>,
        null
    ],

    [
        null,
        <thaumcraft:mechanism_simple>,
        null,
        <thaumcraft:plate:2>,
        <minecraft:piston>,
        <thaumcraft:plate:2>,
        null,
        <thaumcraft:mechanism_simple>,
        null
    ],

    [
        null,
        <thaumcraft:plate:1>,
        <minecraft:quartz>,
        null,
        null,
        null,
        null,
        null,
        null
    ],

    [
        null,
        <minecraft:string>,
        null,
        <minecraft:string>,
        <minecraft:wool>,
        <minecraft:string>,
        null,
        <minecraft:string>,
        null
    ],

    [
        <ore:paneGlass>,
        <ore:slabWood>,
        <ore:paneGlass>,
        <ore:paneGlass>,
        null,
        <ore:paneGlass>,
        <ore:paneGlass>,
        <ore:paneGlass>,
        <ore:paneGlass>
    ],

    [
        <thaumcraft:jar_normal>,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    ],

    [
        null,
        <thaumcraft:nugget:5>,
        null,
        <thaumcraft:plate:1>,
        <ore:blockGlass>,
        <thaumcraft:plate:1>,
        null,
        <thaumcraft:nugget:8>,
        null
    ],

    [
        <thaumcraft:tube>,
        <minecraft:lever>,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    ],

    [
        <thaumcraft:tube>,
        <thaumcraft:filter>,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    ],

    [
        <thaumcraft:phial>,
        <thaumcraft:tube_valve>,
        <thaumcraft:phial>,
        <thaumcraft:tube>,
        <thaumcraft:plate:1>,
        <thaumcraft:tube>,
        <thaumcraft:phial>,
        <thaumcraft:tube_restrict>,
        <thaumcraft:phial>
    ],

    [
        <thaumcraft:plank_greatwood>,
        <thaumcraft:filter>,
        <thaumcraft:plank_greatwood>,
        <thaumcraft:plate>,
        <minecraft:bucket>,
        <thaumcraft:plate>,
        <thaumcraft:plank_greatwood>,
        <thaumcraft:filter>,
        <thaumcraft:plank_greatwood>
    ],

    [
        <thaumcraft:plate:1>,
        <thaumcraft:plate>,
        <thaumcraft:plate:1>,
        <thaumcraft:filter>,
        <thaumcraft:metal_alchemical>,
        <thaumcraft:filter>,
        <thaumcraft:plate:1>,
        <thaumcraft:plate>,
        <thaumcraft:plate:1>
    ],

    [
        <thaumcraft:plank_greatwood>,
        <thaumcraft:tube_filter>,
        <thaumcraft:plank_greatwood>,
        <thaumcraft:plate>,
        <thaumcraft:metal_alchemical>,
        <thaumcraft:plate>,
        <thaumcraft:plate:1>,
        <thaumcraft:bellows>,
        <thaumcraft:plate:1>
    ],

    [
        <thaumcraft:plate>,
        <thaumcraft:crucible>,
        <thaumcraft:plate>,
        <minecraft:cobblestone>,
        <minecraft:furnace>,
        <minecraft:cobblestone>,
        <minecraft:cobblestone>,
        <minecraft:cobblestone>,
        <minecraft:cobblestone>
    ],

    [
        <thaumcraft:plate>,
        <thaumcraft:smelter_basic>,
        <thaumcraft:plate>,
        <thaumcraft:plate:2>,
        <thaumcraft:metal_alchemical>,
        <thaumcraft:plate:2>,
        <thaumcraft:plate:2>,
        <thaumcraft:plate:2>,
        <thaumcraft:plate:2>
    ],

    [
        <thaumcraft:plate:1>,
        <thaumcraft:tube_valve>,
        <thaumcraft:plate:1>,
        <thaumcraft:tube>,
        <thaumcraft:plank_greatwood>,
        <thaumcraft:tube>,
        <thaumcraft:plate:1>,
        <thaumcraft:tube_valve>,
        <thaumcraft:plate:1>
    ],

    [
        <thaumcraft:plate>,
        <thaumcraft:smelter_basic>,
        <thaumcraft:plate>,
        <thaumcraft:plate:3>,
        <thaumcraft:metal_alchemical_advanced>,
        <thaumcraft:plate:3>,
        <thaumcraft:plate:3>,
        <thaumcraft:plate:3>,
        <thaumcraft:plate:3>
    ],

    [
        <ore:plankWood>,
        <ore:plankWood>,
        null,
        <minecraft:leather>,
        <minecraft:leather>,
        <minecraft:iron_ingot>,
        <ore:plankWood>,
        <ore:plankWood>,
        null
    ],

    [
        null,
        <thaumcraft:tube>,
        null,
        <thaumcraft:morphic_resonator>,
        <thaumcraft:metal_alchemical>,
        <thaumcraft:mechanism_simple>,
        null,
        <thaumcraft:tube>,
        null
    ],

    [
        <ore:plankWood>,
        <thaumcraft:plate:2>,
        <ore:plankWood>,
        <thaumcraft:plate:1>,
        <thaumcraft:nitor_yellow>,
        <thaumcraft:plate:1>,
        <ore:plankWood>,
        <thaumcraft:mechanism_simple>,
        <ore:plankWood>
    ],

    [
        null,
        <thaumcraft:plate:1>,
        null,
        <thaumcraft:plate:1>,
        <thaumcraft:amber_block>,
        <thaumcraft:plate:1>,
        null,
        <thaumcraft:plate:1>,
        null
    ],

    [
        <thaumcraft:plate>,
        null,
        <thaumcraft:plate>,
        null,
        <thaumcraft:mechanism_simple>,
        null,
        <ore:slabWood>,
        <minecraft:redstone>,
        <ore:slabWood>
    ],

    [
        <thaumcraft:arcane_ear>,
        <minecraft:lever>,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    ]
] as IIngredient[][];

val astralworkbenchNames = [
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe2",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe3",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe4",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe5",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe6",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe7",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe8",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe9",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipea",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipeb",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipec",
    "tungstenmagic:shaped/internal/altar/thaumclonereciped",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipee",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipef",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe10",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe11",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe12",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe13",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe14",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe15",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe16",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe17",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe18",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe19",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1a",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1b",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1c",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1d",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1e",
    "tungstenmagic:shaped/internal/altar/thaumclonerecipe1f"
] as string[];



for z, item in astralOutputs {
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe(astralworkbenchNames[z], astralOutputs[z], 200, 200, astralworkbenchInputs[z]);
}

