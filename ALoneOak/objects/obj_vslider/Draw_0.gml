draw_self();
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(x,y+16, string_hash_to_newline(string(round(percentage*100))+"%"));
draw_set_halign(fa_left);

