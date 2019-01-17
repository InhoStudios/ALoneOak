/// @description Insert description here
// You can write your code in this editor

enum Blocks{
	imageIndex,
	x,
	y,
	dir,
	size
}

var _grass = ds_grid_create(Blocks.size,0);
var _stone = ds_grid_create(Blocks.size,0);

with(obj_grass){
	var _row = ds_grid_add_row(_grass);
	_grass[# Blocks.imageIndex,_row] = image_index;
	_grass[# Blocks.x,_row] = x;
	_grass[# Blocks.y,_row] = y;
	_grass[# Blocks.dir,_row] = image_xscale;
}

with(obj_stone){
	var _row = ds_grid_add_row(_grass);
	_grass[# Blocks.imageIndex,_row] = image_index;
	_grass[# Blocks.x,_row] = x;
	_grass[# Blocks.y,_row] = y;
	_grass[# Blocks.dir,_row] = image_xscale;
}


var _grassKey = room_get_name(room)+"grass";
var _stoneKey = room_get_name(room)+"stone";

ds_map_replace(save_data,_grassKey,ds_grid_write(_grass));
ds_map_replace(save_data,_stoneKey,ds_grid_write(_stone));

ds_grid_destroy(_grass);
ds_grid_destroy(_stone);

/*
image_index
x
y
obj_type (stone = 0, grass = 1)