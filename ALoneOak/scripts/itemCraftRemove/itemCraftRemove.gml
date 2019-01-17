var ID = argument0;
var count = argument1;
//var toName = argument2;
//var stackable = argument3;

if(global.itemStackable[ID]){
if(global.item[ID] > count){
     global.item[ID] -= count;
     for(i = 0; i < inventory.totalSlots; i++){
            if(global.slot[i] == global.itemName[i]){
                    global.slot[i] = "noone"
            }
            if(global.slotID[i] == global.item[ID]){
                  global.slotID[i] = -1;
                  global.slotCount[i] -= count;
            }
     }
}else if(round(global.item[ID]) == count){
      global.item[ID] = 0;   
            for(i = 0; i < inventory.totalSlots; i++){
                  if(global.slot[i] == global.itemName){
                        global.slot[i] = "noone"
                  }
                  if(global.slotID[i] == global.item[ID]){
                        global.slotID[i] = -1;
                        global.slotCount[i] = 0;
                  }
            }

     }
}else if(!global.itemStackable){
        global.item[ID]--;
        for(j = 0; j < inventory.totalSlots; j++){
            if(global.slot[j] == toName){
                   global.slot[j] = "noone"
            }
            if(global.slotID[j] == global.item[ID]){
                    global.slotID[i] = -1;
                    global.slotCount[i] = 0;
                    break;
            }
      } 
} 

