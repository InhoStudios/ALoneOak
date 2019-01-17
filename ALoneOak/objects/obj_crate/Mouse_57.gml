if(selected){
     var newc = instance_create(x,y,obj_crate);
     newc.waterlevel = waterlevel;
     instance_destroy();
     selected = false;
}

