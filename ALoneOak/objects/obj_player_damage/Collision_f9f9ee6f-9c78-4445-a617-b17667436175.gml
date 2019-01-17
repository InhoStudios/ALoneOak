if(!hit && other.hp > 0){
    with(other){
        alarm[0] = 5;
        alarm[1] = 15;
        image_blend = c_red
        hsp = sign(x-other.x)*2;
        hit = true;
    } 
    x = other.x;
    y = other.y;
    if(other.hp <= 1){
    create_particle(obj_blood_part,5,8);
    }
    other.hp-=damage;
    hit = true
    create_particle(obj_blood_part,2,5);
}

