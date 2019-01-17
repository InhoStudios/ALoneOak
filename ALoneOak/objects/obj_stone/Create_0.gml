image_speed = 0;
if(place_meeting(x,y-16, obj_grass)){
    image_index = choose(0,1);
}else{
    image_index = 2;
}
event_inherited();

