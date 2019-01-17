if(show){
    draw_sprite(spr_controls, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32);
    draw_sprite(spr_q_mark, 1, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 24, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 24);
} else {
    draw_sprite(spr_q_mark, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 24, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 24);
}

