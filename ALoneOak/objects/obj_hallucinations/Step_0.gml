if(x > obj_player.x + 10){
        key_left = 1;
        key_right = 0;
    }else if(x < obj_player.x - 10){
        key_right = 1;
        key_left = 0
    }else{
          key_right = 0
          key_left = 0
    }
    hsp = movespeed*(key_right-key_left);
    if(vsp < 10){
    vsp += grav;
}
if(place_meeting(x+hsp,y,obj_block)){
    key_jump = 1;
}else{
    key_jump = 0
}
if(place_meeting(x,y+1,obj_block)){
    vsp = key_jump * -jumpspeed;
}
if(place_meeting(x+hsp, y, obj_block)){

    var yplus = 0
    while(place_meeting(x+hsp,y-yplus,obj_block) && yplus < abs(5*hsp)){
        yplus += 1;
    }
    if(place_meeting(x+hsp, y-yplus, obj_block)){
        while(!place_meeting(x+sign(hsp), y, obj_block))
            x += sign(hsp)
        hsp = 0;

    }else{
        y -= yplus;
    }
}
x += hsp;
if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0   
}
y += vsp;
if(hsp != 0){
    image_xscale = sign(hsp)
}
if(place_meeting(x,y,obj_player) && !dis){
    hsp = 0;
    alarm[0] = 4;
    dis = true;
}

