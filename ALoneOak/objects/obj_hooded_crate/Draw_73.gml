var cellWidth = 32;
var cellHeight = 32;

if(drawCInv){

    var startX = __view_get( e__VW.XView, 0 ) + 90;
    var startY = __view_get( e__VW.YView, 0 ) + 4;
    var width = 300;
    var height = 32;

    for(xx = startX+32; xx < startX+width; xx += 76){  
        for(yy = startY+24; yy < startY+height; yy += 52){
                manageCrateInv(cellWidth, cellHeight)    
        }    
    } 
}
draw_set_alpha(1);
draw_set_color(c_white);

