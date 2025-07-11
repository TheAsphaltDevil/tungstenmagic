#loader contenttweaker
import mods.contenttweaker.Commands;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.MutableItemStack;

var zsItem = VanillaFactory.createItem("cert_hbest");
zsItem.maxStackSize = 1;
zsItem.rarity = "rare";
zsItem.itemRightClick = function(stack, world, player, hand) {


	if(player.hasGameStage("vicio") ||
    player.hasGameStage("armara") ||
    player.hasGameStage("evorsio") ||
    player.hasGameStage("discidia") ||
    player.hasGameStage("aevitas")
    ) { 
        Commands.call("title @s subtitle {\"text\":\"You have already joined a house!\"}", player, world, false, true);
        return "PASS";
    }

	else {
        Commands.call("gamestage silentadd @p fireSpells", player, world, false, true);
        Commands.call("gamestage silentadd @p healingSpells", player, world, false, true);
        Commands.call("gamestage silentadd @p vicio", player, world, false, true);
        Commands.call("title @s times 15 120 15", player, world, false, true);
        Commands.call("title @s subtitle {\"text\":\"Proud Ardean\"}", player, world, false, true);
        Commands.call("title @s title {\"text\":\"You are now a\",\"bold\":true}", player, world, false, true);
        stack.shrink(1);
        return "SUCCESS";
	}
};
zsItem.register();