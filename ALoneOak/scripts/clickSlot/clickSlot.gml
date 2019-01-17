/// @description clickSlot(i, itemId, fromCrate);
/// @param i
/// @param  itemId
/// @param  fromCrate

var i = argument0; // slot number
var itemId = argument1; // the numerical ID
var crate = argument2; // is the item from a crate
//var sprite = argument2;

if(crate){
    for(i = 0; i < totalContent; i++){
        inventory.content[i] = content[i];
        inventory.contentID[i] = contentID[i];
        inventory.count[i] = count[i];
    }
}

if(global.slotID[i] != -1){
     if(global.slotID[i] == itemId){
           inventory.slotTaken = i;
           inventory.spr = global.itemSprite[itemId];
           inventory.fromCrate = crate;
     }
}

