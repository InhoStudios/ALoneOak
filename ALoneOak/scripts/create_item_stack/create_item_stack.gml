/// @description create_item_stack(ID, value, x, y)
/// @param ID
/// @param  value
/// @param  x
/// @param  y
/*var name = argument0;
var sprite = argument1;
var val = argument2;
var stackable = argument3;
var xx = argument4;
var yy = argument5;*/
var ID = argument0;
var val = argument1;
var xx = argument2;
var yy = argument3;

stack = instance_create(xx,yy,obj_item_stack);
stack.ID = ID;
stack.sprite_index = global.itemSprite[ID];
stack.val = val;
stack.stackable = global.itemStackable[ID];
