image_speed = 0;
if(place_meeting(x,y-16, obj_block)){
    image_index = 1;
}else{
    image_index = 0;
}
if(place_meeting(x-16,y,obj_block) && place_meeting(x-32,y,obj_block) && place_free(x-16,y-16) && place_free(x-32,y-16) && image_index == 0 && !global.tree_created){
    if(room == room0){
        tree = instance_create(x,-128,obj_winter_tree);
    }
}
//alarm[1] = 1;
if(image_index == 0){
    if(irandom(10) < 2){
         instance_create(x,y-16,obj_stones);
    }
    if(irandom(17) < 2){
         instance_create(x + 8,y - 8,obj_herbs);
    }
}
if(global.crow_min_height > y - 64){
    global.crow_min_height = y - 64
}
event_inherited();

