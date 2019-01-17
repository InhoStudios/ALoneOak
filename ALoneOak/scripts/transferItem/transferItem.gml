/// @description transferItem(i, itemId, spr passthrough);
/// @param i
/// @param  itemId
/// @param  spr passthrough
var i = argument0;
var itemID = argument1;
var tempSpr = argument2;

// check if its coming from the crate
if(!inventory.fromCrate){
    if(tempSpr == global.itemSprite[itemID]){
        // check if its moving to an empty slot
        if(global.slot[i] == "noone" && global.slotID[i] == -1){
            // move the item to the EMPTY slot that is being hovered over
            global.slotID[i] = itemID;
            global.slot[i] = global.itemName[itemID];
            global.slotCount[i] = global.slotCount[slotTaken];
            
            // set the original slot to be empty
            global.slot[inventory.slotTaken] = "noone";
            global.slotID[inventory.slotTaken] = -1;
            global.slotCount[inventory.slotTaken] = 0;
        // slot is not full but can be filled
        } else if(global.slot[i] == global.itemName[itemID] && global.slotID[i] = itemID){
            // loop and add items into the slot as need be (fill the slot)
            while(global.slotCount[i] < global.maxStack && global.slotCount[slotTaken] > 0){
                global.slotCount[i]++; // increment items in slot
                global.slotCount[inventory.slotTaken]--; // decrement how many items are in the original slot
            }
            // check if the original slot is empty and clear it
            if(global.slotCount[slotTaken] <= 0){
                global.slot[inventory.slotTaken] = "noone";
                global.slotID[inventory.slotTaken] = -1;
            }
        }
        // reset spr and selected slot
        inventory.spr = nosprite;
        inventory.slotTaken = -1;
    }
} else {
    if(tempSpr == global.itemSprite[itemID]){

            // check if crate slot is empty
            if(content[i] == "noone" && contentID[i] == -1){
                    contentID[i] = itemID;
                    content[i] = content[itemID];
                    count[i] = count[inventory.slotTaken];
     
                    content[inventory.slotTaken] = "noone";
                    contentID[inventory.slotTaken] = -1;
                    count[inventory.slotTaken] = 0;
            } else if(content[i] == global.itemName[itemID] && contentID[i] = itemID){
                    while(count[i] < global.maxStack && count[slotTaken] > 0){
                        count[i]++;
                        count[slotTaken]--;
                    }
                    if(count[inventory.slotTaken] <= 0){
                        content[inventory.slotTaken] = "noone";
                        count[inventory.slotTaken] = -1;
                    }
            }
        } else {
            if(content[i] == "noone" && contentID[i] == -1){
                    contentID[i] = itemID;
                    content[i] = global.itemName[itemID];
                    count[i] = global.slotCount[inventory.slotTaken];
     
                    global.slot[inventory.slotTaken] = "noone";
                    global.slotID[inventory.slotTaken] = -1;
                    global.slotCount[inventory.slotTaken] = 0;
            } else if(content[i] == global.itemName[itemID] && contentID[i] = itemID){
                    while(count[i] < global.maxStack && global.slotCount[inventory.slotTaken] > 0){
                        count[i]++;
                        global.slotCount[inventory.slotTaken]--;
                    }
                    if(global.slotCount[inventory.slotTaken] <= 0){
                        global.slot[inventory.slotTaken] = "noone";
                        global.slotID[inventory.slotTaken] = -1;
                    }
            }
        }
        inventory.spr = nosprite;
        inventory.slotTaken = -1;
}

