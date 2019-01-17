if(!hit){
    other.hp -= damage;
    with(other){
        if(sanity > 2){
            sanity -= 3;
        }
        alarm[0] = 120
    }
    instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_hit_red);
    hit = true;
}

