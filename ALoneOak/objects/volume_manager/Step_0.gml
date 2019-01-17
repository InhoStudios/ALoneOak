if(!audio_is_playing(snd_main)){
        audio_play_sound(snd_main,11,true);
}
audio_sound_gain(snd_main,global.musicVolume,0);
if(room != room_menu){
        weathAud = obj_weather_emitter.ambsnd
        if(!audio_is_playing(weathAud)){
             audio_play_sound(weathAud,10,true);
        }
        if(global.windSpeed >= 2 || global.windSpeed <= -2){
           if(!audio_is_playing(snd_wind_blowing)){
               audio_play_sound(snd_wind_blowing,10,true);
               audio_sound_gain(snd_wind_blowing,0,0);
               audio_sound_gain(snd_wind_blowing,global.weatherVolume,60);
           }
        }else{
              audio_sound_gain(snd_wind_blowing,0,60);
              if(audio_sound_get_gain(snd_wind_blowing == 0)){
                     audio_stop_sound(snd_wind_blowing);
              }
        }
}
else{
     if(!audio_is_playing(snd_snow)){
          audio_play_sound(snd_snow,10,true);
          audio_sound_gain(snd_snow,global.weatherVolume,0); 
     }
}
audio_sound_gain(weathAud,global.weatherVolume,0);
var num = audio_get_listener_count();
for( var i = 0; i < num; i++;)
   {
   var info = audio_get_listener_info(i);
   audio_set_master_gain(info[? "index"], global.masterVolume);
   ds_map_destroy(info);
   }

