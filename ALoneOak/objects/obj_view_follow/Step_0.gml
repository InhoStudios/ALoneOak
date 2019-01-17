var objx
if(instance_exists(obj_player)){
    switch(obj_player.image_xscale){
        case 1:
             objx = obj_player.x + 72
             break;
        case -1:
             objx = obj_player.x - 72
             break;
        }
    x += (objx - x) * .075
    y += (obj_player.y - y) * .15
}

__view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 )/2) );
__view_set( e__VW.YView, 0, y - (__view_get( e__VW.HView, 0 )/2) );

__background_set( e__BG.HSpeed, 1, -.01 );
__background_set( e__BG.HSpeed, 2, -.05 );

__background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 ) - 8 );
__background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 ) - 4 );

