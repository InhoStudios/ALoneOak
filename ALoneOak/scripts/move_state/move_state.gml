/// @description move_state(); Moves the player
get_input();    

if(mouse_attack){
    image_index = 0;
    attacked = false;
    atkChain = 0;
    state = attack_state;
}

hsp = movespeed * (key_right-key_left);
if(vsp < 10){
    vsp += grav;
}
if(place_meeting(x,y+1,obj_block) || place_meeting(x,y+1,obj_structure)){
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
if(place_meeting(x+hsp, y, obj_structure)){

    var yplus = 0
    while(place_meeting(x+hsp,y-yplus,obj_structure) && yplus < abs(5*hsp)){
        yplus += 1;
    }
    if(place_meeting(x+hsp, y-yplus, obj_structure)){
        while(!place_meeting(x+sign(hsp), y, obj_structure))
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
if(place_meeting(x,y+vsp,obj_structure)){
    while(!place_meeting(x,y+sign(vsp), obj_structure))
        y += sign(vsp);
    vsp = 0
}
y += vsp;

if(hsp != 0){
    image_speed = .25;
    image_xscale = sign(hsp)
    sprite_index = spr_player_walking;
    idle = 0
    if(alarm[8] <= 0){
        alarm[8] = 4/image_speed;
    }
}else{
    idle++;       
    if(idle >= room_speed*5){
        if(sprite_index != spr_player_sit){
            image_index = 0;
            sprite_index = spr_player_sit;
        }
    if(floor(image_index) == image_number-1){
         image_speed = 0;
         image_index = image_number-1
    }else{
          image_speed = .1;
    } 
    }else{
    image_speed = .06;
    sprite_index = spr_player_new;
    }
    alarm[8] = -1;
}
if(vsp != 0){
    idle = 0;
}
