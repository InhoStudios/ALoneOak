ini_open("save.ini");
var key = "default"
var val = random_get_seed();
var px = "px"
var py = "py"
ini_write_real("Rooms", key, val);
if(instance_exists(obj_player)){
     ini_write_real("PX", px, obj_player.x) 
     ini_write_real("PY", py, obj_player.y)
}

ini_write_string("Inventory", "inv0", global.slot[0]);
ini_write_string("Inventory", "inv1", global.slot[1]);
ini_write_string("Inventory", "inv2", global.slot[2]);
ini_write_string("Inventory", "inv3", global.slot[3]);
ini_write_string("Inventory", "inv4", global.slot[4]);
ini_write_string("Inventory", "inv5", global.slot[5]);
ini_write_string("Inventory", "inv6", global.slot[6]);
ini_write_string("Inventory", "inv7", global.slot[7]);
ini_write_string("Inventory", "inv8", global.slot[8]);
ini_write_string("Inventory", "inv9", global.slot[9]);
ini_write_string("Inventory", "inv10", global.slot[10]);
ini_write_string("Inventory", "inv11", global.slot[11]);
ini_write_string("Inventory", "inv12", global.slot[12]);
ini_write_string("Inventory", "inv13", global.slot[13]);
ini_write_string("Inventory", "inv14", global.slot[14]);

ini_write_real("Items", "item0", global.item[0]);
ini_write_real("Items", "item1", global.item[1]);
ini_write_real("Items", "item2", global.item[2]);
ini_write_real("Items", "item3", global.item[3]);
ini_write_real("Items", "item4", global.item[4]);
ini_write_real("Items", "item5", global.item[5]);
ini_write_real("Items", "item6", global.item[6]);
ini_write_real("Items", "item7", global.item[7]);
ini_write_real("Items", "item8", global.item[8]);
ini_write_real("Items", "item9", global.item[9]);
ini_write_real("Items", "item10", global.item[10]);
ini_write_real("Items", "item11", global.item[11]);
ini_write_real("Items", "item12", global.item[12]);
ini_write_real("Items", "item13", global.item[13]);
ini_write_real("Items", "item14", global.item[14]);
ini_write_real("Items", "item15", global.item[15]);
ini_write_real("Items", "item16", global.item[16]);
ini_write_real("Items", "item17", global.item[17]);
ini_write_real("Items", "item18", global.item[18]);
ini_write_real("Items", "item19", global.item[19]); 
ini_write_real("Items", "item20", global.item[20]);
ini_write_real("Items", "item21", global.item[21]);
ini_write_real("Items", "item22", global.item[22]); 

ini_close(); 
