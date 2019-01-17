draw_self();
with(bg){
if(!place_meeting(x,y,obj_player)){
    draw_sprite(spr_stone_structure_front, 0, x, y);
}
}

