vsp = 150
image_speed = 0;
var center = room_width/2
if(x >= center){
    for(i = x; i >= center; i-=16){
        if(place_meeting(i,y,obj_winter_tree)){
            instance_destroy();
        }
    }
}else if(x <= center){
    for(i = x; i <= center; i+=16){
        if(place_meeting(i,y,obj_winter_tree)){
            instance_destroy()
        }
    }
}
alarm[2] = 1;
selected = false;
alarm[3] = 100;

