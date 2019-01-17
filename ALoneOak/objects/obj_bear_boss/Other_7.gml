if(sprite_index = spr_enemy_attack){
    sprite_index = spr_walking_enemy
    image_speed = .3
    movespeed = 1;
    alarm[2]=45
    attack = false;
}

if(dead = true){
     instance_destroy();
}

