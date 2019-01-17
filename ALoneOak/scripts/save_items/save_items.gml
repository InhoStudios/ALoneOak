save_Game();

/*ini_open("save.ini");  
var px = "px"
var py = "py"                      
if(instance_exists(obj_player)){
ini_write_real("PX", px, obj_player.x) 
ini_write_real("PY", py, obj_player.y)
}
ini_close(); 

var save_data = ds_map_create();

save_data[? "playerx"] = obj_player.x;
save_data[? "playery"] = obj_player.y;

save_data[? "inventory0"] = global.slot[0];
save_data[? "inventory1"] = global.slot[1];
save_data[? "inventory2"] = global.slot[2];
save_data[? "inventory3"] = global.slot[3];
save_data[? "inventory4"] = global.slot[4];
save_data[? "inventory5"] = global.slot[5];
save_data[? "inventory6"] = global.slot[6];
save_data[? "inventory7"] = global.slot[7];
save_data[? "inventory8"] = global.slot[8];
save_data[? "inventory9"] = global.slot[9];
save_data[? "inventory10"] = global.slot[10];
save_data[? "inventory11"] = global.slot[11];
save_data[? "inventory12"] = global.slot[12];
save_data[? "inventory13"] = global.slot[13];
save_data[? "inventory14"] = global.slot[14];

save_data[? "item0"] = global.item[0];
save_data[? "item1"] = global.item[1];
save_data[? "item2"] = global.item[2];
save_data[? "item3"] = global.item[3];
save_data[? "item4"] = global.item[4];
save_data[? "item5"] = global.item[5];
save_data[? "item6"] = global.item[6];
save_data[? "item7"] = global.item[7];
save_data[? "item8"] = global.item[8];
save_data[? "item9"] = global.item[9];
save_data[? "item10"] = global.item[10];
save_data[? "item11"] = global.item[11];
save_data[? "item12"] = global.item[12];
save_data[? "item13"] = global.item[13];
save_data[? "item14"] = global.item[14];
save_data[? "item15"] = global.item[15];
save_data[? "item16"] = global.item[16];
save_data[? "item17"] = global.item[17];
save_data[? "item18"] = global.item[18];
save_data[? "item19"] = global.item[19];
save_data[? "item20"] = global.item[20];
save_data[? "item21"] = global.item[21];

var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "save.alo");
file_text_write_string(file, save_string);
file_text_close(file);

show_message("Game Saved");
