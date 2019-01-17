if(instance_exists(inventory)){
    with(inventory){
        if(!drawInv){
            drawInv = true;
            global.openCrate = self;
            return 0;
        } else {
            drawInv = false;
            spr = nosprite;
            global.openCrate = noone;
            return 0;
        }
    }
} 


