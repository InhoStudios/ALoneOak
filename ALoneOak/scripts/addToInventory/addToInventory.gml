//addToInventory(id, value);
var inv = inventory;  
var ID = argument0;
var value = argument1;
var slotName = global.itemName[ID];
var invFull = false;


for(i = 0; i < inv.totalSlots; i++){

      if(global.itemStackable[ID] == true){
            
           if(global.slotID[i] == ID && global.slotCount[i] < global.maxStack){
                while(value > 0 && global.slotCount[i] < global.maxStack){
                    addList(slotName);
                    global.slotCount[i]++;
                    value--;
                }
                if(value <= 0) break;
           }
      }
      
      if(i == inv.totalSlots-1){
           for(j = 0; j < inv.totalSlots; j++){
                 if(global.slotID[j] == -1){
                        global.slotID[j] = ID;
                        global.slot[j] = global.itemName[ID]
                        while(value > 0 && global.slotCount[j] < global.maxStack){
                            addList(slotName);
                            global.slotCount[j]++;
                            value--;
                        }
                        invFull = false;
                        break;
                 } else {
                        var invFull = true;
                 }
           }
      }
}

if(invFull){
    create_item_stack(ID,value,obj_player.x,obj_player.y);
}
