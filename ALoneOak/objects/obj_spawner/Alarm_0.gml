var spawn = obj_zombie;
if(irandom_range(-45,spawnChance) < 0){
    if(night = true){
    if(global.days <= 3){
         instance_create(x,y,obj_zombie);
    } else if (global.days <= 7){
         switch(choose(0,0,1,1,1,1,1)){
              case 0:
                   instance_create(x,y,obj_zombie);
                   break;
              case 1:
                   instance_create(x,y,obj_wolf);
                   break;
         }
    } else if (global.days <= 10){
         switch(choose(0,1,1,2,2,2,2)){
              case 0:
                   instance_create(x,y,obj_zombie);
                   break;
              case 1:
                   instance_create(x,y,obj_wolf);
                   break;
              case 2:
                    //spawn bear
                    break;
         }
    } else if (global.days <= 14){
         switch(choose(0,1,1,2,2,2,3,3,3,3,4,4,4,4)){
              case 0:
                   instance_create(x,y,obj_zombie);
                   break;
              case 1:
                   instance_create(x,y,obj_wolf);
                   break;
              case 2:
                    // spawn bear
                    break;
              case 3:
                    // mutant wolf
                    break;
              case 4:
                    // mutant bear;
                    break;
         }
         if(!zboss){
            // create zombie boss
            zboss = true
         }
    } else if (global.days <= 15){
         switch(choose(0,1,2,3,3,4,4,5)){
              case 0:
                   instance_create(x,y,obj_zombie);
                   break;
              case 1:
                   instance_create(x,y,obj_wolf);
                   break;
              case 2:
                    //spawn bear
                    break;
              case 3:
                    // mutant wolf
                    break;
              case 4:
                    // mutant bear;
                    break;
              case 5:
                    instance_create(x,y,obj_mutant_crow);
                    break;
         }
         if(!wboss){
            // create wolf boss
            wboss = true
         }
    } else if (global.days <= 20){
         switch(choose(0,1,2,2,3,3,3,4,4,4,5,5,5)){
              case 0:
                   instance_create(x,y,obj_zombie);
                   break;
              case 1:
                   instance_create(x,y,obj_wolf);
                   break;
              case 2:
                    //spawn bear
                    break;
              case 3:
                    // mutant wolf
                    break;
              case 4:
                    // mutant bear;
                    break;
              case 5:
                    instance_create(x,y,obj_mutant_crow);
                    break;
         }
         if(global.days == 16 && !bboss){
            // create wolf boss
            bboss = true
         }
         if(global.days == 17 && !mcboss){
            // create wolf boss
            mcboss = true
         }
         if(global.days == 18 && !mwboss){
            // create wolf boss
            mwboss = true
         }
         if(global.days == 119 && !mbboss){
            // create wolf boss
            mbboss = true
         }
         if(global.days == 20 && !yboss){
            // create wolf boss
            yboss = true
         }
    } 
    } else {
        switch(choose(0,1,1,1)){
            case 0:
                instance_create(x,y,obj_wolf);
                break;
            case 1:
                break;
        }
    }
}
alarm[0] = random_range(minTime, maxTime);


