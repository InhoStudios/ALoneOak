/// @description check_inventory_source();

// Returns string
// true: currently hovering over inventory
// false: currently hovering over crate

// define hover bounds
var startX = __view_get( e__VW.XView, 0 ) + 40;
var startY = __view_get( e__VW.YView, 0 ) + 32;
var width = 400;
var height = 172;

var crX = __view_get( e__VW.XView, 0 ) + 90;
var crY = __view_get( e__VW.YView, 0 ) + 4;
var crW = 300;
var crH = 32;

if(mouseOver(startX, startY, width, height)) return "inv";
else if(mouseOver(crX,crY,crW,crH)) return "crate";
else return "null";
