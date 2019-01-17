draw_self();
with(bg){
if(!place_meeting(x,y,obj_player)){
    draw_sprite(spr_structure_basic_front, 1, x, y);
}
}

