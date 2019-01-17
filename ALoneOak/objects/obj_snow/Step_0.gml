y += 2;
if(room = room_menu) global.windSpeed = .5;
x += global.windSpeed;

if(y > room_height){
     instance_destroy();
}

