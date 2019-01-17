/// @description drawInvSprite(i, itemId);
/// @param i
/// @param  itemId

var iPT = argument0; // i passthrough
var itemID = argument1;

if(global.slotID[iPT] == itemID && global.slot[iPT] == global.itemName[itemID]){
    draw_set_alpha(1);
    draw_sprite(global.itemSprite[itemID], 0, coordX[i] + 12, coordY[i] + 12);
    draw_set_color(c_white);
    
    if(global.itemStackable[itemID] && global.item[itemID] > 1){
        draw_set_font(fnt_tooltips);
        draw_text(coordX[i] + 16, coordY[i], string_hash_to_newline(string(global.slotCount[iPT])));
        draw_set_font(fnt_normal);
    }
}


