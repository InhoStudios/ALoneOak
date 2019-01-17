draw_text(32, 32, string_hash_to_newline("Days alive: " + string(global.days)));
draw_text(32, 64, string_hash_to_newline("Days left: " + string(global.maxDays - global.days)));
draw_text(32, 96, string_hash_to_newline("Body Temperature: " + string(global.bodyTemp) + "° C"));
draw_text(32, 128, string_hash_to_newline("Ambient Temperature: " + string(global.temp) + "° C"));
draw_text(32,156, string_hash_to_newline("X: " + string(obj_player.x) + "Y: " + string(obj_player.y)));

