image_speed = 0
image_index = irandom(image_number-1);
image_xscale = choose(1,-1);
alarm[0] = 10
var audio = choose(snd_ts1,snd_ts2,snd_ts3)
audio_play_sound(audio,13,false);
audio_sound_gain(audio,global.weatherVolume, 0);
hit = false;

