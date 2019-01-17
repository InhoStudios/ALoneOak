if(place_meeting(x,y+vsp,obj_block)){
    while(!place_meeting(x,y+sign(vsp), obj_block))
        y += sign(vsp);
    vsp = 0
}
y += vsp;
bg.y = y;
bg.x = x;

if(vsp = 0){
    if(cr1 = noone) cr1 = instance_create(x-128,y-22,obj_hooded_crate);
    if(cr2 = noone) cr2 = instance_create(x+128,y-22,obj_hooded_crate);
    if(cr3 = noone) cr3 = instance_create(x-128,y-86,obj_hooded_crate);
}

