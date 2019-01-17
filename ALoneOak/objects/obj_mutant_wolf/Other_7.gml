if(sprite_index = spr_mutant_wolf_attack){
    sprite_index = spr_mutant_wolf_run;
    image_speed = .3
    movespeed = 5;
    alarm[2]=45
    attack = false;
}

if(dead = true){
     instance_destroy();
}

