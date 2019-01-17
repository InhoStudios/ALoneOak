if(instance_exists(obj_player)){
    x = x - dist_player_x;
    y = y - dist_player_y;
}

__view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 )/2) );
__view_set( e__VW.YView, 0, y - (__view_get( e__VW.HView, 0 )/2) );

