var cellWidth = argument0;
var cellHeight = argument1;

// draw the sprite
for(i = 0; i < totalContent; i++){
    for(item = 0; item < global.totalItems; item++){
        drawCrateInvSprite(i, item);
    }
}

// select items in the slot
for(i = 0; i < totalContent; i++){
      if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
            if(mouse_check_button_pressed(mb_left)){
                    for(j = 0; j < global.totalItems; j++){
                            clickSlot(i, j, true);
                    }
             }
             for(k = 0; k < global.totalItems; k++){
                    drawName(i, k);
             }
      }
}

// draw clicked item
if(mouse_check_button(mb_left)){
     draw_sprite(inventory.spr, 0, mouse_x-3, mouse_y-3);
}

// check if mouse is released and there is an slot selected (slotTaken)
if(mouse_check_button_released(mb_left) && slotTaken > -1){
    for(i = 0; i < totalContent; i++){
          // define variables to start and end the slot hovering detection
          var startX = __view_get( e__VW.XView, 0 ) + 90;
          var startY = __view_get( e__VW.YView, 0 ) + 4;
          var width = 300;
          var height = 32;
          
          // define variables to start and end the slot hovering detection
          var invX = __view_get( e__VW.XView, 0 ) + 40;
          var invY = __view_get( e__VW.YView, 0 ) + 32;
          var invW = 400;
          var invH = 172;
    
          for(j = 0; j < global.totalItems; j++){
                // if not hovering a slot
                if(!mouseOver(startX, startY, width, height) && !mouseOver(invX,invY,invW,invH)){
                    var tempSpr = inventory.spr;
                    releaseSlot(i, j);
                // if hovering a slot
                }else if((content[i] == "noone" && contentID[i] == -1)/*slot is empty*/ || (content[i] == global.itemName[j] && contentID[i] = j)/*slot is not completely full but has items in it*/){
                    if(mouseOver(coordX[i], coordY[i], cellWidth, cellHeight)){
                        var tempSpr = inventory.spr; // set the sprite the item sprite (spr)
                        transferItem(i/*slot id*/, j/*itemID*/, tempSpr); // transfer item to that slot
                    }
                }
          }
    }
    inventory.spr = nosprite;
}

