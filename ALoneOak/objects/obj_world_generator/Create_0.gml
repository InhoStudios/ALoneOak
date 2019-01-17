if(global.loading == true){
     var key = "default"
     ini_open("save.ini");
     var seed = ini_read_real("Rooms", key, 0);
     random_set_seed(seed);
}
else{
     randomize(); 
}
create_world(0,obj_grass, obj_stone);
save_Game();

