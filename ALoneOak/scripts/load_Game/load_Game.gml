global.loading = true;
room_goto(room0);
if(instance_exists(obj_world_generator)){
     with(obj_world_generator) instance_destroy();
}
instance_create(x,y,obj_world_generator);
var px = "px"
var py = "py"         

//load_Items();


