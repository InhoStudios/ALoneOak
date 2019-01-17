if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0
}
y += vsp;

