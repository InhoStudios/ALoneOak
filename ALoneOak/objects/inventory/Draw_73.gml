var cellWidth = 32;
var cellHeight = 32;

if(drawInv && room != room_pause && room != room_menu){

    var startX = __view_get( e__VW.XView, 0 ) + 40;
    var startY = __view_get( e__VW.YView, 0 ) + 32;
    var width = 400;
    var height = 172;

    for(xx = startX+32; xx < startX+width; xx += 76){  
        for(yy = startY+24; yy < startY+height; yy += 52){
                manageObjects(cellWidth, cellHeight)    
        }    
    } 
}
draw_set_alpha(1);
draw_set_color(c_white);

