var cellWidth = 48;
var cellHeight = 48;
var pressed = mouse_check_button_released(mb_left);

for(i = 0; i < totalCraftSlots; i++){
       if(mouseOver(coordX[i],coordY[i],cellWidth, cellHeight)){
          switch(craftPage){
          case 1:
              switch(i){
                   case 0:
                        craftString = "Scraper : Requires " + string(global.item[3]) + "/5 stone#Used for crafting other tools"
                        if(itemRequired(3,5) && pressed){
                             itemCraftRemove(3,5);
                             addToInventory(8,3);
                             pressed = false;
                        }
                        break;
                   case 1:
                        craftString = "Bio Fuel : Requires " + string(global.item[0]) + "/2 acorn, " + string(global.item[1]) + "/1 twig, and " + string(global.item[8]) + "/1 stone scraper#Used for torches and fireplaces"
                        if(itemRequired(0,2) && itemRequired(1,1) && itemRequired(8,1) && pressed){
                              itemCraftRemove(0,2);
                              itemCraftRemove(1,1);
                              itemCraftRemove(8,1);
                              addToInventory(9,1);
                             pressed = false;
                        }
                        break;
                   case 2:
                        craftString = "Bow : Requires " + string(global.item[1]) + "/5 twigs and " + string(global.item[2]) + "/3 twine#Offensive weapon that can shoot birds and mobs"
                        if(itemRequired(1,5) && itemRequired(2,3) && pressed){
                             itemCraftRemove(1,5);
                             itemCraftRemove(2,3);
                             addToInventory(6,1);
                             pressed = false;
                        }
                        break;
                   case 3:
                        craftString = "Arrows : Requires " + string(global.item[1]) + "/2 twigs and " + string(global.item[4]) + "/1 flint#Used for bows, can be sharpened for higher damage."
                        if(itemRequired(1,2) && itemRequired(4,1) && pressed){
                             itemCraftRemove(1,2);
                             itemCraftRemove(4,1);
                             addToInventory(7,1);
                             pressed = false;
                        }
                        break;
                   case 4:
                        craftString = "Sharp arrows : Requires " + string(global.item[7]) + "/4 arrows, " + string(global.item[28]) + "/4 feathers, and " + string(global.item[8]) + "/1 stone scraper#Do more damage than normal arrows"
                        if(itemRequired(7,4) && itemRequired(8,1) && itemRequired(28,4) && pressed){
                             itemCraftRemove(7,4);
                             itemCraftRemove(8,1);
                             itemCraftRemove(28,4);
                             addToInventory(10,4);
                             pressed = false;
                        }
                        break;
                   case 5:
                        craftString = "Flint lighter : Requires " + string(global.item[4]) + "/1 flint and " + string(global.item[3]) + "/1 stone#Used to light firepits and torches"
                        if(itemRequired(3,1) && itemRequired(4,1) && pressed){
                             itemCraftRemove(3,1);
                             itemCraftRemove(4,1);
                             addToInventory(11,1)
                             pressed = false;
                        }
                        break;
                   case 6:
                        craftString = "Torch : Requires " + string(global.item[9]) + "/2 biofuel or " + string(global.item[26]) + "/2 charcoal," + string(global.item[1]) + "/3 twigs, and " + string(global.item[2]) + "/1 twine #Used to light the surrounding"
                        if((itemRequired(9,2) || itemRequired(26,2)) && itemRequired(1,3) && itemRequired(2,1) && pressed){
                             if(itemRequired(9,2)) itemCraftRemove(9,2); else itemCraftRemove(26,2);
                             itemCraftRemove(1,3);
                             itemCraftRemove(2,1);
                             addToInventory(5,1);
                             pressed = false;
                        }
                        break;
                   case 7:
                        craftString = "Firepit : Requires " + string(global.item[1]) + "/15 twigs, " + string(global.item[9]) + "/5 biofuel or " + string(global.item[26]) + "/5 charcoal, and " + string(global.item[3]) + "/10 stone#Used to light the surrounding, lasts longer than torches"
                        if((itemRequired(9,5) || itemRequired(26,5)) && itemRequired(1,15) && itemRequired(3,10) && pressed){
                             if(itemRequired(9,5)) itemCraftRemove(9,5); else itemCraftRemove(26,5);
                             itemCraftRemove(1,15);
                             itemCraftRemove(3,10);
                             addToInventory(14,1);
                             pressed = false;
                        }
                        break;
                   case 8:
                        craftString = "Twine : Requires " + string(global.item[1]) + "/3 twigs and " + string(global.item[8]) + "/1 stone scraper#Used to craft tools"
                        if(itemRequired(1,3) && itemRequired(8,1) && pressed){
                             itemCraftRemove(8,1);
                             itemCraftRemove(1,3);
                             addToInventory(2,2);
                             pressed = false;
                        }
                        break;
                   case 9:
                        craftString = "Rope : Requires " + string(global.item[2]) + "/5 twine#Used to craft tools"
                        if(itemRequired(2,5) && pressed){
                             itemCraftRemove(2,5); 
                             addToInventory(18,1);
                             pressed = false;
                        }
                        break;
                   case 10:
                        craftString = "Healing Salve: Requires " + string(global.item[22]) + "/1 undead essence and " + string(global.item[25]) + "/5 herb#Used to regenerate health over time"
                        if(itemRequired(22,1) && itemRequired(25,5) && pressed){
                             itemCraftRemove(22,1);
                             itemCraftRemove(25,5);
                             addToInventory(23,1);
                             pressed = false;
                        }
                        break;
                   case 11:
                        craftString = "Hooded Crate: Requires " + string(global.item[12]) + "/1 crate and " + string(global.item[15]) + "/2 animal hide#Holds items"
                        if(itemRequired(12,1) && itemRequired(15,2) && pressed){
                             itemCraftRemove(12,1);
                             itemCraftRemove(15,2);
                             addToInventory(29,1);
                             pressed = false;
                        }
                        break;
                   case 12:
                        craftString = "Crate : Requires " + string(global.item[1]) + "/15 twigs and " + string(global.item[18]) + "/2 rope#Used to collect water. Can be paired with firepit for crafting certain items"
                        if(itemRequired(1,15) && itemRequired(18,2) && pressed){
                             itemCraftRemove(1,15);
                             itemCraftRemove(18,2);
                             addToInventory(12,1);
                             pressed = false;
                        }
                        break;
                   case 13:
                        craftString = "Acorn Flour : Requires " + string(global.item[13]) + "/10 softened acorn and " + string(global.item[8]) + "/1 scraper#Used to make acorn bread"
                        if(itemRequired(13,10) && itemRequired(8,1) && pressed){
                              itemCraftRemove(8,1);
                              itemCraftRemove(13,10);
                              addToInventory(19,2);
                              pressed = false;
                        }
                        break;
              }
              break;
          case 2:
            switch(i){
                   case 0:
                        break;
                   case 1:
                        break;
                   case 2:
                        break;
                   case 3:
                        break;
                   case 4:
                        break;
                   case 5:
                        break;
                   case 6:
                        break;
                   case 7:
                        break;
                   case 8:
                        break;
                   case 9:
                        break;
                   case 10:
                        break;
                   case 11:
                        break;
                   case 12:
                        break;
                   case 13:
                        break;
              }
            }
       }
}

var startX = __view_get( e__VW.XView, 0 ) + 40;
var startY = __view_get( e__VW.YView, 0 ) + 32;
var width = 400;
var height = 128;

if(!mouseOver(startX,startY,width,height)){
     craftString = "[Hover over an item to see the crafting recipe]";
}

