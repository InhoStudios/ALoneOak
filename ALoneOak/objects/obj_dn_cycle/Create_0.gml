alpha = .1;
dayLength = 140;
nightLength = 160;
alarm[0] = room_speed * dayLength;

dnCycleSurf = surface_create(room_width + (__view_get( e__VW.WView, 0 )*2), room_height);
fog_surf = surface_create(room_width + (__view_get( e__VW.WView, 0 )*2), room_height);

global.enemy_damage = 2;
global.weatherChance = 6;
global.windSpeed = choose(-3,3);
foggy = false
fog_alpha = 0;

