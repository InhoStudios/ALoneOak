/// @description gen rocks and herbs
if(image_index == 0 && !place_meeting(x,y-15,obj_stones) && global.days <= 10 && irandom(10) < 2){
    instance_create(x,y-16,obj_stones);
}
if(image_index == 0 && !place_meeting(x,y-15,obj_herbs) && global.days <= 10 && irandom(17) < 2){
    instance_create(x + 8,y - 8,obj_herbs);
}

