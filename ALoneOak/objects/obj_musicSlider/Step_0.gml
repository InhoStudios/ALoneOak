if(!mouse_check_button(mb_left)){
     grabbed = false;
}

if(grabbed == false){
             exit;
}else{
      if((mouse_y + yy) < bottomLimit && (mouse_y + yy) > topLimit){
                  y = mouse_y + yy;
      }
      else if((mouse_y + yy) > bottomLimit){
           y = bottomLimit
      }
      else if((mouse_y + yy) < topLimit){
           y = topLimit
      }

}

percentage = (y-bottomLimit)/(topLimit-bottomLimit)
global.musicVolume = percentage*global.masterVolume;

