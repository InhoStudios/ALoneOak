global.saveHP = other.hp;
global.saveSan = other.sanity;
global.saveHun = other.hunger;
if(global.days >= minDay){
    obj_player.x = toX;
    obj_player.y = 0;
    room_goto(toRoom);
}

