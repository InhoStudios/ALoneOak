/// @description addBackFromCrate(slot content, stackable, sprite, slot count)
/// @param slot content
/// @param  stackable
/// @param  sprite
/// @param  slot count
var name = argument0;
var stack = argument1;
var sprite = argument2;

for(j = 0; j < totalContent; j++){
    if(name = content[j]){
        //addToInventory(name,stack,sprite,count[j]);
        content[j] = "noone";
        count[j] = 0;
    }
}

