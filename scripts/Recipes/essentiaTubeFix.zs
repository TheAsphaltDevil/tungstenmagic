//Thanks, NovaNauseant!

//remove old essentia tube varient recipes
    recipes.remove(<thaumcraft:tube_oneway>);
    recipes.remove(<thaumcraft:tube_restrict>);
    
//new better not busted recipes
    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("TUBE_ONEWAY", "TUBES", 10, [<aspect:aqua>], <thaumcraft:tube_oneway>, [[null, null, <thaumcraft:tube>],[null, null, null], [null, null, null]]);
    mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("TUBE_RESTRICT", "TUBES", 10, [<aspect:terra>], <thaumcraft:tube_restrict>, [[<thaumcraft:tube>, null, null],[null, null, null], [null, null, null]]);