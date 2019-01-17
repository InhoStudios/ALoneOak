if(room = room0){
if(place_meeting(x-16,y,obj_block) && place_meeting(x-32,y,obj_block) && place_free(x-16,y-16) && place_free(x-32,y-16) && image_index == 0 && !global.tree_created){
    tree = instance_create(x,-128,obj_winter_tree);
}
}

