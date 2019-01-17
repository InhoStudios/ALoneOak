var cellWidth = 48;
var cellHeight = 48;

draw_set_color(c_gray);
draw_set_alpha(0.7);

if(drawCraft && room != room_pause && room != room_menu){

var startX = __view_get( e__VW.XView, 0 ) + 40;
var startY = __view_get( e__VW.YView, 0 ) + 32;
var width = 400;
var height = 128;
var tooltipY = startY + 144  
var tooltipX = startX + 16
var ttwidth = startX + (width-16)
var padding = 4;
var wordWidth = width - 36;

draw_rectangle(tooltipX,tooltipY,ttwidth,tooltipY+48,false);
draw_sprite(spr_craft_gui,0,startX,startY); 


for(xx = startX+8; xx < startX+width; xx += 56){  
     for(yy = startY+10; yy < startY+height; yy += 60){  
            coordX[cSlot] = xx;
            coordY[cSlot] = yy; 
            draw_set_alpha(1);
            
            draw_sprite(spr_craft_slot,0,xx,yy); 
            switch(craftPage){                  
                case 1:
                    draw_sprite(craftSprite[cSlot],0,xx,yy);
                    break;
                case 2:
                    draw_sprite(craftSprite[cSlot + totalCraftSlots],0,xx,yy);
                    break;
            }
            
            cSlot++;
            if(cSlot >= totalCraftSlots){
                     cSlot = 0;
                     break;
            }
                                                   
     }    
}
draw_set_font(fnt_tooltips)
draw_set_color(c_white);
draw_set_alpha(1);
draw_text_ext(tooltipX + padding, tooltipY + padding , string_hash_to_newline(craftString), -1, wordWidth)  
draw_set_font(fnt_normal);
}

draw_set_alpha(1);
draw_set_color(c_white);


