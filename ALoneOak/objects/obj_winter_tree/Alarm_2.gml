var center = room_width/2
if(x > center){
    for(i = x; i >= center; i-=16){
        if(place_meeting(i,y,obj_winter_tree)){
            instance_destroy();
        }
    }
}else if(x < center){
    for(i = x; i <= center; i+=16){
        if(place_meeting(i,y,obj_winter_tree)){
            instance_destroy()
        }
    }
}
global.tree_created = true;

