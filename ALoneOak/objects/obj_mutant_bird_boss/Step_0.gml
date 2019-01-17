if(state == "airborne"){
    if(instance_exists(obj_player)){
        hsp = sign(x-obj_player.x) * -movespeed;
    }
    x += hsp;
}
if(obj_player.x < x + 256 && obj_player.x > x - 256 && state == "airborne"){
    state = "dive";
}
if(state == "dive"){
    sprite_index = spr_mutant_crow_dive;
    dir = point_direction(x,y,obj_player.x,obj_player.y);
    dhsp = lengthdir_x(divespeed,dir);
    dvsp = lengthdir_y(divespeed,dir);
    x+=dhsp;
    y+=dvsp;
    if(place_meeting(x,y,obj_player)){
        dmg = instance_create(x,y,obj_enemy_damage);
        dmg.damage = global.enemy_damage * 2;
        state = "pullup"
        dives++;
    }
    if(place_meeting(x,y,obj_player_damage)){
        state = "pullup"
    }
    if(dhsp != 0){
        image_xscale = sign(dhsp);
    }
}
if(state == "pullup"){
    x += dhsp;
    image_xscale = sign(dhsp);
    vsp = -2;
    vert = __view_get( e__VW.YView, 0 ) + 16;
    if(y > vert){
        y+=vsp;
        vsp -= 0.15;
    } else if (y <= vert){
        while(dhsp >= 2){
            if(dives <= 3){
                dhsp -= 0.1;
            }
        }
        if(alarm[0] <= 0){
            alarm[0] = room_speed;
            image_speed = 0.1;
        }
    }
    sprite_index = spr_mutant_crow;
    if(dives > 3 && (x < __view_get( e__VW.XView, 0 ) || x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))){
        instance_destroy();
    }
}
if(hsp != 0){
    image_xscale = sign(hsp);
}

