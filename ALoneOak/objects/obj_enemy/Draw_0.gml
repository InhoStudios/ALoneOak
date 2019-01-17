draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(fnt_tooltips);
draw_text(x,y-32,string_hash_to_newline(name));
draw_set_halign(fa_left);
draw_set_font(fnt_normal);
draw_self();

