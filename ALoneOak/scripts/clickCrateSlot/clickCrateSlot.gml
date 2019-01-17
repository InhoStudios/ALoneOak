/// @description clickSlot(i, itemId);
/// @param i
/// @param  itemId

var i = argument0;
var itemId = argument1;

if(contentID[i] != -1){
     if(contentID[i] == itemId){
           inventory.slotTaken = i;
           inventory.spr = global.itemSprite[itemId];
           inventory.fromCrate = true;
     }
}

