if(irandom(300) == 1 && global.storm == true){
     var scale = random_range(.8,1.25)
     var ltn = instance_create(random_range(0,room_width),0,obj_lightning)
     with(ltn){
               image_xscale = scale
               image_yscale = scale 
     }
}

