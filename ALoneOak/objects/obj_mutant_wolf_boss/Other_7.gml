if(sprite_index = spr_wolf_attack){
    sprite_index = spr_wolf_walk
    image_speed = .3
    movespeed = 2;
    alarm[2]=45
    attack = false;
}

if(dead = true){
     instance_destroy();
}

