/// @description releaseSlot(i, ID);
/// @param i
/// @param  ID
var tempSpr = spr;
var iPT = argument0;
var ID = argument1; //
var amnt = global.slotCount[slotTaken]; // amount of items to be dropped

if(inventory.fromCrate){
    with(global.openCrate){
        if(tempSpr == global.itemSprite[ID]){
            if(global.itemStackable[ID]){
                create_item_stack(ID,amnt,obj_player.x + (irandom_range(-6,6)),obj_player.y - 2);
            }else{
                instance_create(obj_player.x, obj_player.y-2, global.itemObj[ID]);
            }  
            
            if(count[inventory.slotTaken] >= 0) count[slotTaken] = 0;
            
            contentID[inventory.slotTaken] = -1;
            content[inventory.slotTaken] = "noone";
            inventory.spr = nosprite;
        }
    }
} else {
    if(tempSpr == global.itemSprite[ID]){
        if(global.itemStackable[ID]){
            create_item_stack(ID,amnt,obj_player.x + (irandom_range(-6,6)),obj_player.y - 2);
            global.item[ID] -= amnt;
        }else{
            instance_create(obj_player.x, obj_player.y-2, global.itemObj[ID]);
            global.item[ID]--;
        }  
        
        if(global.slotCount[inventory.slotTaken] >= 0) global.slotCount[slotTaken] = 0;
        
        global.slotID[inventory.slotTaken] = -1;
        global.slot[inventory.slotTaken] = "noone";
        inventory.spr = nosprite;
    }
}

