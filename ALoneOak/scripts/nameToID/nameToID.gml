/// @description nameToID(name);
/// @param name
var toName = argument0;
var ID = -1;

for(i = 0; i < global.totalItems; i++){
    if(global.itemName[i] == toName){
        ID = i;
    }
}

return ID;
