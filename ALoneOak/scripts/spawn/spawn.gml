var spawnObj = argument[0];
var view = e__VW;
var accel = 15;

var x_spawn = (camera_get_view_x(view) + (camera_get_view_width(view)/2)) + (choose(-1,1)*camera_get_view_width(view) * 2) 

with(instance_create(x_spawn,0,spawnObj)){
	while(!place_meeting(x,y+accel,obj_block)){
		y += accel
	}
	while(!place_meeting(x,y+1,obj_block)){
		y++;
	}
}