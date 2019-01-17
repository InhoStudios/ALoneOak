//fall
if(x > __view_get( e__VW.XView, 0 ) - 32 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 32){
    if(place_meeting(x,y+vsp,obj_block)){
        while(!place_meeting(x,y+sign(vsp), obj_block))
            y += sign(vsp);
        //vsp = 0
    } else { y += vsp; }
} 

