if(instance_exists(obj_player)){
    hsp = 3*sign(-lengthdir_x(5,point_direction(x,y,obj_player.x,obj_player.y)));
} else {
    hsp = 3*sign(hsp);
}
x += hsp;
vsp = -3;
if(y > vert){
    y+=vsp;
} else if (y <= vert){
    state = "airborne";
}
sprite_index = spr_crow;

