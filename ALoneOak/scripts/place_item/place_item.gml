var toName = argument0
var item = argument1;
var ID = argument2;

if(global.slot[0] == toName){
     instance_create(mouse_x,mouse_y,item);
     global.slot[0] = "noone";
     global.item[ID]--;
}

