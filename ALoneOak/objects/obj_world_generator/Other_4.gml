if(global.roomrestart = true){
    room_persistent = false;
    room_restart();       
    global.roomrestart = false
    alarm[0] = 1;
}

