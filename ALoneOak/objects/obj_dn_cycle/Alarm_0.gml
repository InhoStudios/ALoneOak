/// @description day
if(room != room_menu && room != room_pause){
if(alpha < .9){
     alpha += 0.00008;
     alarm[0] = 1;
     if(foggy){ 
          if(fog_alpha < .8){
               fog_alpha += .015
          }
     }else{              
           if(fog_alpha > 0){
                fog_alpha -= .015
           }
     }
}else{
     alarm[1] = room_speed * nightLength;
     
     audio_stop_sound(volume_manager.weathAud)
     
     if(random(global.weatherChance) <= 5){
          obj_weather_emitter.weather = "rain";
          obj_weather_emitter.ambsnd = snd_rain;
          global.temp = random_range(1,10);
     }else{
           obj_weather_emitter.weather = "snow";
           obj_weather_emitter.ambsnd = snd_snow;
           global.temp = random_range(-10,5);
     }
     
     global.weatherChance+=2;
     global.windSpeed = random_range(-3,3);
      
     if(obj_spawner.spawnChance > 0){
          obj_spawner.spawnChance-=.75;
     }
     if(obj_spawner.minTime >= 5){  
     obj_spawner.minTime -= 2;
     if(obj_spawner.maxTime >= obj_spawner.minTime){
          obj_spawner.maxTime -= 2;
     }
     }
     obj_grass.alarm[0] = 1;
     
     if(irandom(20) < 15){
          global.storm = true;
     } else {
          global.storm = false;
     }
     
     if(random(10) < 1){
          foggy = true
     }else{
           foggy = false;
     }
     if(global.enemy_damage < 5){
        global.enemy_damage += 0.5;
     }
}
}

