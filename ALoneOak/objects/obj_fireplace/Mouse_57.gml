if(selected){
     var newt = instance_create(x,y,obj_fireplace);
     newt.glowSize = glowSize;
     newt.glowAlpha = glowAlpha;
     newt.lit = lit
     if(lit){with(warm)instance_destroy()
     with(newt){
          warm = instance_create(x,y,obj_warmth_collision)
     }
     }
     newt.alarm[1] = alarm[1]
     
     instance_destroy();
     selected = false;
}

