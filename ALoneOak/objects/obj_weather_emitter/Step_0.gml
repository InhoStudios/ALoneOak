if(room == room0 || room == room_left || room == room_right) {

switch(weather){
     case "snow": 
          instance_create(0,-5,obj_snow);
          break;
     case "rain":
          instance_create(0,-5,obj_rain);
          break;    
} 
}


audio_sound_gain(ambsnd, global.weatherVolume, 0);

