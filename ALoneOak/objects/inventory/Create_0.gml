totalSlots = 15;
cSlot = 0;

for(i = 0; i < totalSlots; i++){
      global.slot[i] = "noone";
      global.slotCount[i] = 0;
      global.slotID[i] = -1;
}
for(i = 0; i < totalSlots; i++){
      coordX[i] = 0;
}
for(i = 0; i < totalSlots; i++){
      coordY[i] = 0;
}       

//init objects
initItems();

spr = nosprite;
slotTaken = -1;

drawInv = false;

fromCrate = false;

global.maxStack = 15;

drawing = false;

// init content
totalContent = 4;

for(i = 0; i < totalContent; i++){
    content[i] = "noone";
    contentID[i] = -1;
    count[i] = 0;
}

global.openCrate = noone;

