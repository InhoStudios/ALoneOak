if(room != room_pause && room != room_menu){
if(keyboard_check_pressed(ord("Q")) && !drawCraft){
drawCraft = true;
return 0;
}
if(keyboard_check_pressed(ord("Q")) && drawCraft){
drawCraft = false; 
return 0;
}
if(keyboard_check_pressed(vk_escape) && drawCraft){
drawCraft = false; 
return 0;
}
if(keyboard_check_pressed(ord("E")) && drawCraft){
drawCraft = false; 
return 0;
}

if(drawCraft){
manage_crafting();
}

}

