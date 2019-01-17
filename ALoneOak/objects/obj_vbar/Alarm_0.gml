
switch(slider){
     case "master":
          a = instance_create(x,y,obj_master_slider);
          break;
     case "weather":
          a = instance_create(x,y,obj_weatherSlider);
          break
     case "music":
          a = instance_create(x,y,obj_musicSlider);
          break
     default:
             a = instance_create(x,y, obj_vslider);
             break; 
 
}
a.barLength = sprite_height;
a.topLimit = topLimit;
a.bottomLimit = bottomLimit;
a.y = topLimit;
a.percentage = vari;



