var vsp = 3
hsp = sign(hsp) * 3
if(state != "landed"){
    if(place_meeting(x,y + vsp,obj_block) || (place_meeting(x,y,obj_winter_tree) && obj_winter_tree.y > y + 4)){
        while(!place_meeting(x,y+1,obj_block) && !place_meeting(x,y,obj_winter_tree)) y++
        vsp = 0
        sprite_index = spr_crow_landed;
        state = "landed"
    }
    y+=vsp
    if(place_meeting(x+hsp, y, obj_block)){
        while(!place_meeting(x+sign(hsp), y, obj_block))
            x += sign(hsp)
        hsp = 0;
    }
    x += hsp;
}
