if(crafting.drawCraft){
    switch(index){
    case 0:
        if(crafting.craftPage > crafting.craftStart){
            crafting.craftPage--;
        } else if(crafting.craftPage == crafting.craftStart){
            crafting.craftPage = crafting.craftMax;
        }
        break;
    case 1:
        if(crafting.craftPage < crafting.craftMax){
            crafting.craftPage++;
        } else if(crafting.craftPage == crafting.craftMax){
            crafting.craftPage = crafting.craftStart;
        }
        break;
    }
}

