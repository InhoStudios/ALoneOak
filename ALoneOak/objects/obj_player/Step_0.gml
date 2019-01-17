script_execute(state);
if(global.slot[0] == "bow"){
     if(!instance_exists(obj_dir_arrow))
          instance_create(x,y,obj_dir_arrow);
}

if(!place_meeting(x,y,obj_warmth_collision)){
     if(global.temp < global.bodyTemp && alarm[3] <= 0){
          global.bodyTemp -= tempDropRate;
          alarm[3] = room_speed * global.tempTimer;
     }
     alarm[0] = 0;
}else if(global.bodyTemp < 37 && alarm[3] <= 0){
      global.bodyTemp++;
}
if(hunger >= 75 && global.bodyTemp >= 35){
    if(alarm[0] <= 0){
        alarm[0] = room_speed;
    }
}else{
    alarm[0] = 0;
}
if(global.bodyTemp <= 35 && alarm[2] <= 0  && global.days >= 1){
     hp--;
     alarm[2] = room_speed * 5;
     if(sanity > 0){
        sanity--;
     }
} 

if(obj_dn_cycle.alpha < .6){
     if(global.item[5] > 0){
          global.tempTimer = 15;
     }
     global.tempTimer = 8;
}

if(hp <= 0){
      if(global.revivecount <= 0){
           room_goto(rm_game_over);
      }else{
            global.revivecount--;
            hp = 100;
      }
}

// Calculate temperature drop rate
if(sprite_index = spr_player_sit){
    tempDropRate = 0.3;
} else if (hunger <= 70){
    tempDropRate = 0.7;
} else {
    tempDropRate = 0.5;
}
  
if(instance_exists(obj_winter_tree) && obj_winter_tree.x > x - 64 && obj_winter_tree.x < x + 64 && sanity < 100 && alarm[7] <= 0){
    sanity++;
    alarm[7] = room_speed * 2
}

if(sanity < 50 && irandom(10000) <= 51 - sanity && !instance_exists(obj_hallucinations)){
    instance_create(x + (choose(512,-512)),0,obj_hallucinations);
}

if(hp <= 20){
    if(!instance_exists(obj_low_hp)) instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_low_hp);
} else {
    if(instance_exists(obj_low_hp)){
        with(obj_low_hp) instance_destroy();
    }
}



