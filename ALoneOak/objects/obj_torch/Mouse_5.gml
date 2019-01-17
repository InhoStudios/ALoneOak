if(global.slot[0] == "flintlighter" && !lit){
     if(choose(1,-1) > 0){
     lit = true;
     alarm[1] = 240*room_speed
     warm = instance_create(x,y,obj_warmth_collision);
     global.slot[0] = "noone"
     global.item[11]--;
     instance_create(x + choose(4,-4),y,obj_flint);
     }
}else{  
selected = true;
alarm[0] = 5;
}

