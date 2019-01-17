if(room != room_menu && room != room_pause){
if(keyboard_check_pressed(ord("E")) && !drawInv){
drawInv = true;
drawing = true;
return 0;
}
if(keyboard_check_pressed(ord("E")) && drawInv){
drawInv = false;
drawing = false;
spr = nosprite;
return 0;
}
if(keyboard_check_pressed(vk_escape) && drawInv){
drawInv = false;
drawing = false;
spr = nosprite;
return 0;
}
if(keyboard_check_pressed(ord("Q")) && drawInv){
drawInv = false;
drawing = false;
spr = nosprite;
return 0;
}
}

