draw_self(); 

var cellWidth = 32;
var cellHeight = 32;

draw_set_color(c_gray);
draw_set_alpha(0.7);

if(drawCInv){

var startX = __view_get( e__VW.XView, 0 ) + 90;
var startY = __view_get( e__VW.YView, 0 ) + 4;
var width = 300;
var height = 32;

draw_sprite(spr_hooded_crate_inv,0,startX,startY);


for(xx = startX+24; xx < startX+width; xx += 76){  
     for(yy = startY+4; yy < startY+height; yy += 52){  
            coordX[cSlot] = xx;
            coordY[cSlot] = yy;
            
            draw_set_alpha(1);
            draw_sprite(spr_hotbar_box, 0, xx, yy);
            cSlot++;
            if(cSlot >= totalContent){
                     cSlot = 0;
                     break;
            }
     }    
} 
}
draw_set_alpha(1);
draw_set_color(c_white);

