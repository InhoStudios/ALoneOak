if(keyboard_check_pressed(vk_escape) && (instance_exists(inventory) && !inventory.drawInv) && (instance_exists(crafting) && !crafting.drawCraft)){
    if(room != room_pause){
        if(instance_exists(obj_player) && instance_exists(obj_dn_cycle) && instance_exists(crafting) && instance_exists(obj_lightning_spawner) && (instance_exists(inventory) && inventory.drawing == false) && (instance_exists(crafting) && crafting.drawCraft) == false){
            obj_player.persistent = false;
            obj_dn_cycle.persistent = false;
            crafting.persistent = false;
            obj_lightning_spawner.persistent = false;
        }
        alarm[0] = 1;
    } else {
        room_goto(global.lastroom)
        alarm[0] = 1;
    }
}

