event_inherited();

//drag
if(selected){
     x = mouse_x;
     y = mouse_y;
}
if(waterlevel > 1.5){
     image_index = 1;
}else{
      image_index = 0;
}

if(place_meeting(x,y,obj_fireplace)){
     meetingfire = true;
}else{
      meetingfire = false;
}
 

