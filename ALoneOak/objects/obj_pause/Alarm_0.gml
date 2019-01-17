if(room != room_pause){
        room_goto(room_pause)
    } else {
        if(instance_exists(obj_player) && instance_exists(obj_dn_cycle) && instance_exists(crafting) && instance_exists(obj_lightning_spawner)){
            obj_player.persistent = true;
            obj_dn_cycle.persistent = true;
            crafting.persistent = true;
            obj_lightning_spawner.persistent = true;
        }
    }

