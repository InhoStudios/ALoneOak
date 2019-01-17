if(room != room_pause && room != room_menu){
surface_set_target(dnCycleSurf);
draw_clear(c_black);
if(alpha >= 0.01){
    with(obj_torch){
        draw_set_blend_mode(bm_src_color);
        draw_sprite_ext(spr_glow,0,x,y, glowSize, glowSize,0,c_white, glowAlpha);
        draw_set_blend_mode(bm_normal);
    }
    with(obj_fireplace){
        draw_set_blend_mode(bm_src_color);
        draw_sprite_ext(spr_glow,0,x,y, glowSize, glowSize,0,c_white, glowAlpha);
        draw_set_blend_mode(bm_normal);
    }
    with(obj_sun){
        draw_set_blend_mode(bm_src_color);
        draw_sprite_ext(spr_glow,0,x,y, glowSize, glowSize,0,c_white, glowAlpha);
        draw_set_blend_mode(bm_normal);
    }
    /*with(obj_player){
        draw_set_blend_mode(bm_src_color);
        var playerScale
        var playerAlpha
        if(global.item[5] > 0){
             playerScale = 1;
             playerAlpha = 1;
        }else{
              playerScale = .65
              playerAlpha = .2
        }
        draw_sprite_ext(spr_glow,0,x,y,playerScale,playerScale,0,c_white, playerAlpha);
        draw_set_blend_mode(bm_normal);
    }*/  
}

surface_reset_target();
draw_surface_ext(dnCycleSurf,-__view_get( e__VW.WView, 0 ),0,1,1,0,c_white,alpha);

if(foggy){
     surface_set_target(fog_surf)
     draw_clear(c_ltgray)
     surface_reset_target();
     draw_surface_ext(fog_surf,-__view_get( e__VW.WView, 0 ),0,1,1,0,c_white,fog_alpha);
}
}

/* */
/*  */
