/// @description releaseSlot(i, ID);
/// @param i
/// @param  ID
var tempSpr = spr;
var iPT = argument0;
var ID = argument1;
var amnt = count[slotTaken];

if(tempSpr == global.itemSprite[ID]){
if(global.itemStackable[ID]){
      create_item_stack(ID,amnt,x + (irandom_range(-6,6)),y - 2);
}else{
      instance_create(x,y-2, global.itemObj[ID]);
}  
      if(global.slotCount[slotTaken] >= 0) global.slotCount[slotTaken] = 0;
      contentID[slotTaken] = -1;
      content[slotTaken] = "noone";
      count[slotTaken] = 0;
      inventory.spr = nosprite;
      
}

