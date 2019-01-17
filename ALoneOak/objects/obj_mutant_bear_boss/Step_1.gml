if(hp <= 0){
      image_speed = .3 
      dead = true;     
      sprite_index = spr_enemy_die;
      var fallspeed = 4;
      if(place_meeting(x,y+fallspeed,obj_block)){
      while(!place_meeting(x,y+sign(fallspeed), obj_block))
           y += sign(fallspeed);
           fallspeed = 0
      }
      y += fallspeed;
      movespeed = 0;
}

