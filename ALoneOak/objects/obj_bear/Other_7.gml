if(sprite_index = spr_grizzly_attack){
    sprite_index = spr_grizzly_walk;
    image_speed = .3
    movespeed = 1;
    alarm[2]=45
    attack = false;
}

if(dead = true){
     instance_destroy();
}

