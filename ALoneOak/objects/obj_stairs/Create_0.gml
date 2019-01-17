if(place_meeting(x - 4, y + 4, obj_block)){
    instance_destroy();
} else {
    followStair = instance_create(x - 16, y + 16, obj_stairs);
}

