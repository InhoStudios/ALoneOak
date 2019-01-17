if(state == "airborne"){ 
    hsp = 5 * sign(hsp);
    x += hsp; 
    image_xscale = sign(hsp);
}
if(x > max_bounds || x < min_bounds){
     instance_destroy();
}
if(alarm[0] <= 0){
    if(irandom(50) < 15){
        state = "landing"
    }
    alarm[0] = irandom_range(30,370);
}
if(state == "landing"){
    land();
}

if(state == "landed"){
    if(x > __view_get( e__VW.XView, 0 ) - 16 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 16){
        if(irandom(100) <= 1 && place_meeting(x,y+1,obj_block)){
            jvsp = -3;
            jhsp = 3*choose(1,-1);
            state = "jumping";
        }
    }
    if((instance_exists(obj_player) && (obj_player.x < x + 64 && obj_player.x > x - 64) && obj_player.sprite_index != spr_player_sit) || (instance_exists(obj_arrow) && (obj_arrow.x < x + 48 && obj_arrow.x > x - 48)) || irandom(10000) < 3){
        state = "takeoff";
    }
}

if(state == "takeoff"){
    take_off();
    image_xscale = sign(hsp);
}

if(state = "jumping"){    
    if(jvsp < 4){
        jvsp+=.7;
    }
    if(jvsp > 0 && place_meeting(x,y + jvsp,obj_block)){
        while(!place_meeting(x,y+1,obj_block)) y++
        jvsp = 0
        state = "landed"
    }
    y += jvsp;
    if(place_meeting(x + jhsp,y,obj_block)){

        var yplus = 0
        while(place_meeting(x+jhsp,y-yplus,obj_block) && yplus < abs(5*jhsp)){
            yplus += 1;
        }
        if(place_meeting(x+jhsp, y-yplus, obj_block)){
            while(!place_meeting(x+sign(jhsp), y, obj_block))
                x += sign(jhsp)
            jhsp = 0;

        }else{
            y -= yplus;
        }
    }
    x += jhsp;
    if(jhsp != 0) image_xscale = sign(jhsp);
}

