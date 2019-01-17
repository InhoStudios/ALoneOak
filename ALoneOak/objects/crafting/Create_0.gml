totalCraftSlots = 14;
cSlot = 0;

for(i = 0; i < totalCraftSlots; i++){
      global.slot[i] = "noone";
}
for(i = 0; i < totalCraftSlots; i++){
      coordX[i] = 0;
}
for(i = 0; i < totalCraftSlots; i++){
      coordY[i] = 0;
}
craftPage = 1;
craftStart = 1;
craftMax = 2;

craftSprite [0] = spr_stone_scraper_craft;       
craftSprite [1] = spr_bio_fuel_craft;
craftSprite [2] = spr_bow_craft;
craftSprite [3] = spr_arrow_craft;
craftSprite [4] = spr_sharp_arrow_craft;
craftSprite [5] = spr_flint_lighter_craft;
craftSprite [6] = spr_torch_craft;
craftSprite [7] = spr_fireplace_craft;
craftSprite [8] = spr_twine_craft;
craftSprite [9] = spr_reinforced_twine_craft;
craftSprite [10] = spr_undead_heart_craft;
craftSprite [11] = spr_revive_craft;
craftSprite [12] = spr_crate_craft;
craftSprite [13] = spr_acorn_flour_craft;
craftSprite [14] = nosprite;
craftSprite [15] = nosprite;
craftSprite [16] = nosprite;
craftSprite [17] = nosprite;
craftSprite [18] = nosprite;
craftSprite [19] = nosprite;
craftSprite [20] = nosprite;
craftSprite [21] = nosprite;
craftSprite [22] = nosprite;
craftSprite [23] = nosprite;
craftSprite [24] = nosprite;
craftSprite [25] = nosprite;
craftSprite [26] = nosprite;
craftSprite [27] = nosprite;

craftString = "[Hover over an item to see the crafting recipe]"

drawCraft = false;

left = instance_create(x,y,obj_left_right_craft_pages);
right = instance_create(x,y,obj_left_right_craft_pages);

left.index = 0;
right.index = 1;

