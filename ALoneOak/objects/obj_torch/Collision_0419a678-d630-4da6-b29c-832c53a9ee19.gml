if(other.lit && !lit){
     lit = true
     alarm[1] = 240*room_speed 
     warm = instance_create(x,y,obj_warmth_collision);
}

