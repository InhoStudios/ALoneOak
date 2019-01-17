/// @description  use slot
place_item("torch",obj_torch,5);
place_item("fireplace",obj_fireplace,14);
place_item("crate",obj_crate,12);
place_item("shelter",obj_shelter,20);
place_item("reinforcedshelter",obj_reinforced_shelter,21);

if(global.slot[0] == "bird"){
     if(global.item[16] > 1){
          global.item[16]--;
     }else if(global.item[16] == 1){
           global.item[16] = 0;
           global.slot[0] = "noone"
     }
     if(hunger <= 95){ 
           hunger += 5;     
     }else{
           hunger += (99-hunger)
     }
}

if(global.slot[0] == "herb"){
     if(global.item[25] > 1){
          global.item[25]--;
     }else if(global.item[25] == 1){
           global.item[25] = 0;
           global.slot[0] = "noone"
     }
     if(hunger <= 98){ 
           hunger += 2;     
     }else{
           hunger += (99-hunger)
     }
     if(sanity <= 96){ 
           sanity += 4;     
     }else{
           sanity += (99-sanity)
     }
}

if(global.slot[0] == "herbaltea"){
     global.item[27]--;
     global.slot[0] = "noone"
     if(hp <= 90){ 
           hp += 10;     
     }else{
           hp += (99-hp)
     }
     if(sanity <= 95){ 
           sanity += 5;     
     }else{
           sanity += (99-sanity)
     }
}

if(global.slot[0] == "acornbread"){
     if(global.item[24] > 1){
          global.item[24]--;
     }else if(global.item[24] == 1){
           global.item[24] = 0;
           global.slot[0] = "noone"
     }
     if(hunger <= 70){ 
           hunger += 30;     
     }else{
           hunger += (99-hunger)
     }
}

if(global.slot[0] == "undeadheart"){
     if(global.item[23] > 1){
          global.item[23]--;
     }else if(global.item[23] == 1){
           global.item[23] = 0;
           global.slot[0] = "noone"
     }
     if(hp <= 90){ 
           hp += 10;     
     }else{
           hp += (99-hp)
     }
}

if(global.slot[0] == "cookedbird"){
     if(global.item[17] > 1){
          global.item[17]--;
     }else if(global.item[17] == 1){
           global.item[17] = 0;
           global.slot[0] = "noone"
     }
     if(hunger <= 85){ 
           hunger += 15;     
     }else{
           hunger += (99-hunger)
     }
}


if(global.slot[0] == "bow"){
     if(global.item[7] > 0 && global.item[10] == 0){
          instance_create(x,y,obj_arrow);
          global.item[7] --; 
          if(global.item[7] == 0){
               for(var slot = 0; slot < inventory.totalSlots; slot++){
                       if(global.slot[slot] == "arrow"){
                             global.slot[slot] = "noone";
                       }
               }
          }
     }else if(global.item[10] > 0){
           instance_create(x,y,obj_sharp_arrow);
          global.item[10] --; 
          if(global.item[10] == 0){
               for(var slot = 0; slot < inventory.totalSlots; slot++){
                       if(global.slot[slot] == "sharparrow"){
                             global.slot[slot] = "noone";
                       }
               }
          }
     }
}

/// use slot

