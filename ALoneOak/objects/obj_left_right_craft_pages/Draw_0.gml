switch(index){
    case 0:
        xx = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2) - 216;
        yy = __view_get( e__VW.YView, 0 ) + 96;
        break;
    case 1:
        xx = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2) + 216;
        yy = __view_get( e__VW.YView, 0 ) + 96;
        break;
}
if(crafting.drawCraft){
    draw_sprite(sprite_index,index,xx,yy);
}

