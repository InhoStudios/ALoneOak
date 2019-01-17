name = "Bad Birdie";
hsp = 0;
vsp = 0;
movespeed = 4;
divespeed = 7;
min_height = -64;
max_height = global.crow_min_height - 32;
y = irandom_range(min_height,max_height)
vert = y;
image_xscale = sign(hsp)
image_speed = .3
hp = 20;
state = "airborne"
dives = 0;

