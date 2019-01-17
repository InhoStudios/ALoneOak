/// @description night
if(room != room_menu && room != room_pause){
if(alpha > 1){
     alpha -= 0.00008;
     alarm[1] = 1;
     
}else{
     alarm[0] = room_speed * dayLength;
     global.days ++;
}
}

