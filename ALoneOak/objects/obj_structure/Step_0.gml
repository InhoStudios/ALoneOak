if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0
}
y += vsp;
bg.y = y;
bg.x = x;

if(vsp = 0){
    if(cr1 == noone) cr1 = instance_create(x-82,y-89,obj_hooded_crate);
    if(cr2 == noone) cr2 = instance_create(x+76,y-89,obj_hooded_crate);
    if(stairL == noone) stairL = instance_create(x-104,y + 16,obj_stairs);
    if(stairR == noone) stairR = instance_create(x+104,y + 16,obj_right_stairs);
}

