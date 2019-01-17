var cellWidth = 32;
var cellHeight = 32;

draw_set_color(c_gray);
draw_set_alpha(0.7);

if(drawInv && room != room_pause && room != room_menu){

var startX = __view_get( e__VW.XView, 0 ) + 40;
var startY = __view_get( e__VW.YView, 0 ) + 32;
var width = 400;
var height = 172;

draw_sprite(spr_inv,0,startX - 4,startY+2);


for(xx = startX+32; xx < startX+width; xx += 76){  
     for(yy = startY+24; yy < startY+height; yy += 52){  
            coordX[cSlot] = xx;
            coordY[cSlot] = yy;
            
            draw_set_alpha(1);
            if(cSlot = 0){
                    draw_sprite(spr_equip_box, 0, xx, yy);
            }else{
                    draw_sprite(spr_hotbar_box, 0, xx, yy);
            }
            cSlot++;
            if(cSlot >= totalSlots){
                     cSlot = 0;
                     break;
            }
     }    
} 
}
draw_set_alpha(1);
draw_set_color(c_white);

