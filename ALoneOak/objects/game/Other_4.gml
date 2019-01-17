/// @description Insert description here
// You can write your code in this editor
if(!working && global.loading){
	var _grassKey = room_get_name(room)+"grass";
	var _gStr = save_data[? _key];
	
	if(_gStr == undefined) exit;
	
	var _grass = ds_grid_create(0,0);
	ds_grid_read(_grass,_gStr);
	for(var i = 0; i < ds_grid_height(_grass); i++){
		with(instance_create(0,0,obj_grass)){
			x = _grass[# Blocks.x, i];
			y = _grass[# Blocks.y, i];
			image_index = _grass[# Blocks.imageIndex, i];
			image_xscale = _grass[# Blocks.dir, i];
		}
	}
	ds_grid_destroy(_grass);
	
	var _stoneKey = room_get_name(room)+"stone";
	var _sStr = save_data[? _key];
	
	if(_sStr == undefined) exit;
	
	var _stone = ds_grid_create(0,0);
	ds_grid_read(_stone,_sStr);
	for(var i = 0; i < ds_grid_height(_stone); i++){
		with(instance_create(0,0,obj_stone)){
			x = _stone[# Blocks.x, i];
			y = _stone[# Blocks.y, i];
			image_index = _stone[# Blocks.imageIndex, i];
			image_xscale = _stone[# Blocks.dir, i];
		}
	}
	ds_grid_destroy(_stone);
}
