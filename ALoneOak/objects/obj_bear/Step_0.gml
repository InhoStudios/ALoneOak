if(hp > 0 && !dead){
if(image_blend != c_red || !hit){
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
}else{
      key_left = 0;
      key_right = 0;
}

if(alarm[0] <= 0){
if(!hit)
hsp = movespeed*(key_right-key_left);
else if(hit)
hsp = sign(x-obj_player.x)*1.5

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
    while(place_meeting(x+hsp,y-yplus,obj_block) && yplus < abs(32*hsp)){
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
if(place_meeting(x+hsp, y, obj_player)){
    while(!place_meeting(x+sign(hsp), y, obj_player)){
        x += sign(hsp)
        hsp = 0;
    }
}
x += hsp;

if(place_meeting(x,y,obj_player)){
    if(alarm[2] <=0 && !attack){
        alarm[2] = 75
        attack = true
        dmg = instance_create(x+(hsp*4),y,obj_enemy_damage);
        dmg.damage = global.enemy_damage;
        movespeed = 0;
        sprite_index = spr_grizzly_attack;
        image_speed = 0.35
    }
}

if(hsp != 0 || attack = true){
    if(hsp > .7 || hsp < -.7){
           if(hit)
           image_xscale = -sign(hsp)
           else
           image_xscale = sign(hsp)
    }
    image_speed = 0.09
}else{
    image_speed = 0
    image_index = 0;
}
}else{
    image_speed = 0;
    image_index = 0;
    if(place_meeting(x,y+1,obj_block)){
        vsp = 1 * -jumpspeed;
    }
    hsp = 0;
}
if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0   
}
y += vsp;

if(vsp = 0){
    if(hit){
            hit = false;
    }
}
}

