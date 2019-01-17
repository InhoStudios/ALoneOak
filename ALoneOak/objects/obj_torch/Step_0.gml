//fall
if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0
}
y += vsp;

//drag
if(selected){
     x = mouse_x;
     y = mouse_y;
}

if(lit){
        sprite_index = spr_torch
         var addGlow = choose(0,0.008,-0.008);
         glowSize += addGlow;
         glowSize = clamp(glowSize, 0.85, 1.15);
         var addAlph = choose(0,0.006,-0.006);
         glowAlpha += addAlph;
         glowAlpha = clamp(glowAlpha, 0.9, 1.1);
         
}else{
         sprite_index = spr_unlit_torch
         glowSize = clamp(glowSize,0,0);
         glowAlpha = 0
}


