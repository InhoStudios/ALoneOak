if(x > __view_get( e__VW.XView, 0 ) - 32 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 32){
    if(vsp < 20){
        vsp += 0.5;
    }
    if(place_meeting(x,y+vsp,obj_block)){
        while(!place_meeting(x,y+sign(vsp), obj_block))
            y += sign(vsp);
        vsp = 0;
        hsp = 0;
    } else { y += vsp; }
    if(place_meeting(x+hsp,y,obj_block)){
        while(!place_meeting(x+sign(hsp),y, obj_block))
            x += sign(hsp);
        hsp = 0;
    } else { x += hsp; }
    hsp -= sign(hsp) * 0.01;
}
if(hsp = 0 && vsp = 0){
    instance_create(x,y,fadeOBJ);
    instance_destroy();
}

