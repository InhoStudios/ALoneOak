if(mouse_y < bottomLimit && mouse_y > topLimit){
    with(a){
           y = mouse_y;
           percentage = (y-bottomLimit)/(topLimit-bottomLimit);
    }
    switch(slider){
     case "master":
          global.masterVolume = a.percentage;
          break;
     case "weather":
          global.weatherVolume = a.percentage;
          break
     case "music":
          global.musicVolume = a.percentage;
          break
     default:
          with(a) vari = percentage;
          break; 
 
}
}

