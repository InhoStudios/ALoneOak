if(other.waterlevel > 1.5 && other.meetingfire == true){
    instance_create(x,y,obj_herbal_tea)
    with(other)instance_destroy();
    instance_destroy();
}

