switch(sprite_index){
    case spr_acorn:
    if(other.waterlevel > 1.5 && other.meetingfire == true){
        create_item_stack(13,val,x,y)
        instance_destroy();
    }
    break;
    case spr_acorn_flour:
    if(other.waterlevel > 1.5 && other.meetingfire == true){
        create_item_stack(24,val,x,y)
        instance_destroy();
    }
    break;
    case spr_dead_bird:
    if(other.waterlevel > 1.5 && other.meetingfire == true){
        create_item_stack(17,val,x,y)
        instance_destroy();
    }
    break;
    case spr_herbs:
    if(other.waterlevel > 1.5 && other.meetingfire == true){
        create_item_stack(27, 1, x, y);
        if(val > 1){
            create_item_stack(25,val - 1, x,y);
        }
        with(other)instance_destroy();
        instance_destroy();
    }
}

