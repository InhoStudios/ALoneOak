/// @description transferItem(i, itemId, spr passthrough);
/// @param i
/// @param  itemId
/// @param  spr passthrough
var i = argument0;
var itemID = argument1;
var tempSpr = argument2;

if(tempSpr == global.itemSprite[itemID]){
     if(inventory.fromCrate){
            if(content[i] == "noone" && contentID[i] == -1){
                    contentID[i] = itemID;
                    content[i] = content[itemID];
                    count[i] = dount[slotTaken];
     
                    content[slotTaken] = "noone";
                    contentID[slotTaken] = -1;
                    count[slotTaken] = 0;
            } else if(content[i] == global.itemName[itemID] && contentID[i] = itemID){
                    while(count[i] < global.maxStack && count[slotTaken] > 0){
                        count[i]++;
                        count[slotTaken]--;
                    }
                    if(count[slotTaken] <= 0){
                        content[slotTaken] = "noone";
                        count[slotTaken] = -1;
                    }
            }
     } else {
            if(content[i] == "noone" && contentID[i] == -1){
                    contentID[i] = itemID;
                    content[i] = global.itemName[itemID];
                    count[i] = global.slotCount[slotTaken];
     
                    global.slot[slotTaken] = "noone";
                    global.slotID[slotTaken] = -1;
                    global.slotCount[slotTaken] = 0;
            } else if(content[i] == global.itemName[itemID] && contentID[i] = itemID){
                    while(count[i] < global.maxStack && global.slotCount[slotTaken] > 0){
                        count[i]++;
                        global.slotCount[slotTaken]--;
                    }
                    if(global.slotCount[slotTaken] <= 0){
                        global.slot[slotTaken] = "noone";
                        global.slotID[slotTaken] = -1;
                    }
            }
     }
     inventory.spr = nosprite;
     slotTaken = -1;
}

