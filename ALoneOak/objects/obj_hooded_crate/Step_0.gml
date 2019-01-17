event_inherited();
get_input();
if(mouse_x > x - 8 && mouse_x < x + 8 && mouse_y > y - 8&& mouse_y < y + 8){
        if(mouse_use && drawCInv == false){
            drawCInv = true;
            global.openCrate = id;
            return 0;
        } else if(mouse_use && drawCInv == true){
            drawCInv = false;
            global.openCrate = noone;
            return 0;
        }
}
if(instance_exists(inventory) && !inventory.drawInv){
    drawCInv = false;
    return 0;
}

