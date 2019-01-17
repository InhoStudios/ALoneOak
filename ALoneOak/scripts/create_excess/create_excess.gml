/// @description create_excess(start_x,start_y);
/// @param start_x
/// @param start_y

var xx = argument0;
var ah = argument1;
var o_top_level = argument2;
var o_bottom_level = argument3;
var adl = ah;

while(xx < argument0 + __view_get( e__VW.WView, 0 )){
    grass_level = ah + 16
    stone_level = ah + 10*16
    
    instance_create(xx,ah,o_top_level);
    
    for(yy = ah; yy < grass_level; yy += 16){
        instance_create(xx,yy + 16, o_top_level);
        adl = yy;
    }
    
    for(yy = adl; yy < stone_level; yy += 16){
        instance_create(xx,yy + 32, o_bottom_level);
    }
    xx += 16;
}
