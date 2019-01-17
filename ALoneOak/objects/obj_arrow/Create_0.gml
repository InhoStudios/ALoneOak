face = point_direction(x,y,mouse_x,mouse_y);
image_angle = face;
direction = face;
speed = 10;
name = "arrow"
damage = 3;
hit = false;
if(image_angle > 100 && image_angle < 270){
     alarm[0] = 10;
} else if(image_angle < 80 || image_angle > 270){
     alarm[1] = 10;
} else if(image_angle > 79 && image_angle < 101){
     alarm[2] = room_speed * 1.5
}

