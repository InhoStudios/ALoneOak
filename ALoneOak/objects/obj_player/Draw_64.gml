draw_sprite(spr_hp_bar,0,1148,32);
draw_sprite(spr_hunger_bar,0,1148,74);
draw_sprite(spr_sanity_bar,0,1148,116);
draw_set_color(c_red);
draw_rectangle(1148,32,1148+hp-1,32+15,false);
draw_set_color(c_orange);
draw_rectangle(1148,74,1148+hunger-1,74+16,false);
draw_set_color(c_aqua);
draw_rectangle(1148,116,1148+sanity-1,116+15,false);
if(global.bodyTemp <= 34){
     draw_sprite(spr_freeze,0,0,0);
}



