for(i = 0; i < global.totalItems; i++){
    if(i == 6 || i == 11 || i == 12 || i == 14 || i == 21 || i == 29 || i == 30){
        global.itemStackable[i] = false;
    } else {
        global.itemStackable[i] = true;
    }
}

