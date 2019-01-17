x = choose(-32,room_width+32);
if(x > 0){
      hsp = -5;
      
}else{
      hsp = 5
}
min_bounds = -128
max_bounds = room_width + 128;
min_height = 0;
max_height = global.crow_min_height;
y = irandom_range(min_height,max_height)
vert = y;
image_xscale = sign(hsp)
image_speed = .3
hp = 1;
state = "airborne"
alarm[0] = room_speed;
landing = 0;

