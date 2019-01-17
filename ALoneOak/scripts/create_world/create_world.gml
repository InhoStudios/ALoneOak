/// @description create_world(topblock,bottomblock)
/// @param topblock
/// @param bottomblock
global.tree_created = false;
if(global.loading == true){
     var key = "default"
     ini_open("save.ini");
     var seed = ini_read_real("Rooms", key, 0);
     random_set_seed(seed);
     var pY = ini_read_real("PY", "py", 0);
     var pX = ini_read_real("PX", "px", room_width/2);
     instance_create(pX,pY,obj_player);
     instance_create(pX,pY,obj_torch);
     
     if(instance_exists(inventory)){
          with(inventory) instance_destroy();
     }
     
     var Inve = instance_create(x+8,y,inventory);
     
     
      global.slot[0] = ini_read_string("Inventory", "inv0", "noone");
      global.slot[1] = ini_read_string("Inventory", "inv1", "noone");
      global.slot[2] = ini_read_string("Inventory", "inv2", "noone");
      global.slot[3] = ini_read_string("Inventory", "inv3", "noone");
      global.slot[4] = ini_read_string("Inventory", "inv4", "noone");
      global.slot[5] = ini_read_string("Inventory", "inv5", "noone");
      global.slot[6] = ini_read_string("Inventory", "inv6", "noone");
      global.slot[7] = ini_read_string("Inventory", "inv7", "noone");
      global.slot[8] = ini_read_string("Inventory", "inv8", "noone");
      global.slot[9] = ini_read_string("Inventory", "inv9", "noone");
      global.slot[10] = ini_read_string("Inventory", "inv10", "noone");
      global.slot[11] = ini_read_string("Inventory", "inv11", "noone");
      global.slot[12] = ini_read_string("Inventory", "inv12", "noone");
      global.slot[13] = ini_read_string("Inventory", "inv13", "noone");
      global.slot[14] = ini_read_string("Inventory", "inv14", "noone");
      
      global.item[0] = ini_read_real("Items", "item0", 0);
      global.item[1] = ini_read_real("Items", "item1", 0);
      global.item[2] = ini_read_real("Items", "item2", 0);
      global.item[3] = ini_read_real("Items", "item3", 0);
      global.item[4] = ini_read_real("Items", "item4", 0);
      global.item[5] = ini_read_real("Items", "item5", 0);
      global.item[6] = ini_read_real("Items", "item6", 0);
      global.item[7] = ini_read_real("Items", "item7", 0);
      global.item[8] = ini_read_real("Items", "item8", 0);
      global.item[9] = ini_read_real("Items", "item9", 0);
      global.item[10] = ini_read_real("Items", "item10", 0);
      global.item[11] = ini_read_real("Items", "item11", 0);
      global.item[12] = ini_read_real("Items", "item12", 0);
      global.item[13] = ini_read_real("Items", "item13", 0);
      global.item[14] = ini_read_real("Items", "item14", 0);
      global.item[15] = ini_read_real("Items", "item15", 0);
      global.item[16] = ini_read_real("Items", "item16", 0);
      global.item[17] = ini_read_real("Items", "item17", 0);
      global.item[18] = ini_read_real("Items", "item18", 0);
      global.item[19] = ini_read_real("Items", "item19", 0);
      global.item[20] = ini_read_real("Items", "item20", 0);
      global.item[21] = ini_read_real("Items", "item21", 0);
      global.item[22] = ini_read_real("Items", "item22", 0);
     
}
else{
     randomize();
     if(room = room0){
        ply = instance_create(room_width/2,-64,obj_player); 
     } else if(room == room_left){
        
        toX = 16;
        toY = 16;
    
        ply = instance_create(toX,toY,obj_player);
        ply.hp = global.saveHP;
        ply.sanity = global.saveSan;
        ply.hunger = global.saveHun;
        
        structure = instance_create(room_width/2,-128,obj_structure);
     }else if(room == room_right){
        
        toX = room_width - 16;
        toY = 16;
    
        ply = instance_create(toX,toY,obj_player);
        ply.hp = global.saveHP;
        ply.sanity = global.saveSan;
        ply.hunger = global.saveHun;
        structure = instance_create(room_width/2,-128,obj_stone_struc);
     }
}
global.crow_min_height = room_height;
var sh, ah, grass_level, adl, stone_level, startingroom, ending_room;// starting height, alternate height, etc, alternate dirt level, etc
sh = choose(384, 400, 416);
ah = sh;

var starting_room = argument0;
var ending_room = argument0 + 3840;

var o_top_level = argument1;
var o_bottom_level = argument2;

create_excess(starting_room - __view_get( e__VW.WView, 0 ), sh, o_top_level, o_bottom_level);

for(xx = starting_room; xx < ending_room; xx += 16){
    grass_level = ah + 16*choose(1,1,1,1,2,2,2,2,3);
    stone_level = ah + 10*16
    
    instance_create(xx,ah,o_top_level);
    
    for(yy = ah; yy < grass_level; yy += 16){
        instance_create(xx,yy + 16, o_top_level);
        adl = yy;
    }
    
    for(yy = adl; yy < stone_level; yy += 16){
        instance_create(xx,yy + 32, o_bottom_level);
    }
    
    ah += 16*round(random(choose(0,0,0,0,0,1,1,2)))*choose(1,-1);
    if(ah > room_height - 32){
        ah = room_height - 32;
    }
}

create_excess(ending_room, ah, o_top_level, o_bottom_level);

return ending_room;

with(ply){
    pYY = -64
    while(!place_meeting(x,pYY + 16,obj_block)){
        pYY += 16;
    }
    y = pYY
}

