/// @description attack_state();

atk_key = keyboard_check_pressed(vk_space);

switch(atkChain){
    case 0:
        sprite_index = spr_player_attack;
        break;
    case 1:
        sprite_index = spr_attack_2;
        break;
    case 2:
        sprite_index = spr_attack_3;
        break;
}
image_speed = 0.4
var xx
switch(sign(image_xscale)){
    case 1:
        xx = x + 8;
        break;
    case -1:
        xx = x - 8;
        break;
}
if(vsp < 10){
    vsp += grav;
}
if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0
}
y += vsp;

if(!attacked){
    instance_create(xx,y,obj_player_damage);
    attacked = true;
}

if(atk_key && image_index >= 5 && atkChain < 2){
    attacked = false;
    image_index = 0;
    atkChain++;
}

