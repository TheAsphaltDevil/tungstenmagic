import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;
import mods.botania.Brew;

//Script by The_AsphaltDevil
//Intended for the tungsten magic modpack, but feel free to use it in your own creations!
//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output);
//mods.thaumcraft.Crucible.registerRecipe(String name, String researchKey, IItemStack output, IIngredient input, CTAspectStack[] aspects);
//mods.thaumcraft.Crucible.registerRecipe("name", "", , , [<aspect:>*]);

val botPotVialNames = [
    "botp0",
    "botp1",
    "botp2",
    "botp3",
    "botp4",
    "botp5",
    "botp6",
    "botp7",
    "botp8",
    "botp9",
    "botpa",
    "botpb",
    "botpc",
    "botpd",
    "botpe",
    "botpf",
    "botp10",
    "botp11",
    "botp12",
    "botp13",
    "botp14"
] as string[];

val botPotFlaskNames = [
    "fbotp0",
    "fbotp1",
    "fbotp2",
    "fbotp3",
    "fbotp4",
    "fbotp5",
    "fbotp6",
    "fbotp7",
    "fbotp8",
    "fbotp9",
    "fbotpa",
    "fbotpb",
    "fbotpc",
    "fbotpd",
    "fbotpe",
    "fbotpf",
    "fbotp10",
    "fbotp11",
    "fbotp12",
    "fbotp13",
    "fbotp14"
] as string[];

val botVialAspects =[
    [<aspect:motus>*40,<aspect:praecantatio>*10],
    [<aspect:aversio>*40,<aspect:praecantatio>*10],
    [<aspect:desiderium>*40,<aspect:motus>*10],
    [<aspect:victus>*40,<aspect:praecantatio>*10],
    [<aspect:volatus>*40,<aspect:praecantatio>*10],
    [<aspect:victus>*40,<aspect:humanus>*10],
    [<aspect:victus>*40,<aspect:humanus>*5],
    [<aspect:praemunio>*300,<aspect:praecantatio>*10],
    [<aspect:praemunio>*40,<aspect:cognitio>*10],
    [<aspect:praemunio>*40,<aspect:ignis>*10],
    [<aspect:praemunio>*40,<aspect:aqua>*10],
    [<aspect:vacuos>*40,<aspect:sensus>*10, <aspect:motus>*10],
    [<aspect:sensus>*40,<aspect:lux>*10],
    [<aspect:victus>*400],
    [<aspect:perditio>*40,<aspect:praecantatio>*50],
    [<aspect:victus>*40,<aspect:permutatio>*10],
    [<aspect:praemunio>*40,<aspect:terra>*10, <aspect:volatus>*10],
    [<aspect:desiderium>*40,<aspect:bestia>*40],
    [<aspect:desiderium>*40,<aspect:aqua>*40],
    [<aspect:vacuos>*40,<aspect:alkimia>*40],
] as CTAspectStack[][];

val botVials = [
    <botania:brewvial>.withTag({brewKey: "speed"}),
    <botania:brewvial>.withTag({brewKey: "strength"}),
    <botania:brewvial>.withTag({brewKey: "haste"}),
    <botania:brewvial>.withTag({brewKey: "healing"}),
    <botania:brewvial>.withTag({brewKey: "jumpBoost"}),
    <botania:brewvial>.withTag({brewKey: "regen"}),
    <botania:brewvial>.withTag({brewKey: "regenWeak"}),
    <botania:brewvial>.withTag({brewKey: "resistance"}),
    <botania:brewvial>.withTag({brewKey: "warpWard"}),
    <botania:brewvial>.withTag({brewKey: "fireResistance"}),
    <botania:brewvial>.withTag({brewKey: "waterBreathing"}),
    <botania:brewvial>.withTag({brewKey: "invisibility"}),
    <botania:brewvial>.withTag({brewKey: "nightVision"}),
    <botania:brewvial>.withTag({brewKey: "absorption"}),
    <botania:brewvial>.withTag({brewKey: "overload"}),
    <botania:brewvial>.withTag({brewKey: "soulCross"}),
    <botania:brewvial>.withTag({brewKey: "featherFeet"}),
    <botania:brewvial>.withTag({brewKey: "bloodthirst"}),
    <botania:brewvial>.withTag({brewKey: "allure"}),
    <botania:brewvial>.withTag({brewKey: "clear"})
] as IItemStack[];

val botFlasks = [
    <botania:brewflask>.withTag({brewKey: "speed"}),
    <botania:brewflask>.withTag({brewKey: "strength"}),
    <botania:brewflask>.withTag({brewKey: "haste"}),
    <botania:brewflask>.withTag({brewKey: "healing"}),
    <botania:brewflask>.withTag({brewKey: "jumpBoost"}),
    <botania:brewflask>.withTag({brewKey: "regen"}),
    <botania:brewflask>.withTag({brewKey: "regenWeak"}),
    <botania:brewflask>.withTag({brewKey: "resistance"}),
    <botania:brewflask>.withTag({brewKey: "warpWard"}),
    <botania:brewflask>.withTag({brewKey: "fireResistance"}),
    <botania:brewflask>.withTag({brewKey: "waterBreathing"}),
    <botania:brewflask>.withTag({brewKey: "invisibility"}),
    <botania:brewflask>.withTag({brewKey: "nightVision"}),
    <botania:brewflask>.withTag({brewKey: "absorption"}),
    <botania:brewflask>.withTag({brewKey: "overload"}),
    <botania:brewflask>.withTag({brewKey: "soulCross"}),
    <botania:brewflask>.withTag({brewKey: "featherFeet"}),
    <botania:brewflask>.withTag({brewKey: "bloodthirst"}),
    <botania:brewflask>.withTag({brewKey: "allure"}),
    <botania:brewflask>.withTag({brewKey: "clear"})
] as IItemStack[];

val botKeysToRemove = [
    "speed",
    "strength",
    "haste",
    "healing",
    "jumpBoost",
    "regen",
    "regenWeak",
    "resistance",
    "warpWard",
    "fireResistance",
    "waterBreathing",
    "invisibility",
    "nightVision",
    "absorption",
    "overload",
    "soulCross",
    "featherFeet",
    "bloodthirst",
    "allure",
    "clear"
] as string[];

for o, item in botKeysToRemove {
    mods.botania.Brew.removeRecipe(botKeysToRemove[o]);
}

//mods.thaumcraft.Crucible.registerRecipe(String name, String researchKey, IItemStack output, IIngredient input, CTAspectStack[] aspects);
for p, item in botFlasks {
    mods.thaumcraft.Crucible.registerRecipe(botPotFlaskNames[p], "", botFlasks[p], <botania:vial:1>, botVialAspects[p]);
}

for x, item in botFlasks {
    mods.thaumcraft.Crucible.registerRecipe(botPotVialNames[x], "", botVials[x], <botania:vial>, botVialAspects[x]);
}