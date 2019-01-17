var cellWidth = argument0;
var cellHeight = argument1;

// draw the sprites of the items in each slot
for(i = 0; i < totalSlots; i++){
    for(item = 0; item < global.totalItems; item++){
        drawInvSprite(i, item);
    }
}

// loop through slots
for(i = 0; i < totalSlots; i++){
      // check if hovering over a slot
      if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
            // check if clicking a slot and selecting an item
            if(mouse_check_button_pressed(mb_left)){
                    for(j = 0; j < global.totalItems; j++){
                            clickSlot(i, j, false);
                    }
             }
             for(k = 0; k < global.totalItems; k++){
                    drawName(i, k);
             }
      }
}

// check if pressing mouse
if(mouse_check_button(mb_left)){
     draw_sprite(spr, 0, mouse_x-3, mouse_y-3);
}

// check if released left click and there is a slot selected
if(mouse_check_button_released(mb_left) && slotTaken > -1){
    for(i = 0; i < totalSlots; i++){
          var startX = __view_get( e__VW.XView, 0 ) + 40;
          var startY = __view_get( e__VW.YView, 0 ) + 32;
          var width = 400;
          var height = 172;

          var crX = -1;
          var crY = -1;
          var crW = 0;
          var crH = 0;
          
          if(global.openCrate != noone){
                var crX = __view_get( e__VW.XView, 0 ) + 90;
                var crY = __view_get( e__VW.YView, 0 ) + 4;
                var crW = 300;
                var crH = 32;
          } else {
                var crX = -1;
                var crY = -1;
                var crW = 0;
                var crH = 0;
          }

          for(j = 0; j < global.totalItems; j++){
                // not hovering over a slot
                if(!mouseOver(startX, startY, width, height) && !(mouseOver(crX, crY, crW, crH) && global.openCrate == noone)){
                    var tempSpr = inventory.spr;
                    releaseSlot(i, j);
                // hovering over a slot
                }else if(((global.slot[i] == "noone" && global.slotID[i] == -1) || (global.slot[i] == global.itemName[j] && global.slotID[i] = j)) && i != inventory.slotTaken){
                    if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
                            var tempSpr = inventory.spr;
                            transferItem(i, j/*itemID*/, tempSpr); // transfer item to that slot
                    }
                }
          }
    }
    inventory.spr = nosprite;
}

