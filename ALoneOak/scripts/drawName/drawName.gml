/// @description drawName(i, ID);
/// @param i
/// @param  ID
var i = argument0;
var ID = argument1;
var nameDraw;

switch(ID){
    case 0:
        nameDraw = "Acorn#Falls from the lone oak.#Used to craft acorn flour and acorn bread.";
        break;
    case 1:
        nameDraw = "Twig#Falls from the lone oak.#Used to craft a lot of items and tools.";
        break;
    case 2:
        nameDraw = "Twine#Crafted from twigs and stone scrapers.#Used to craft tools and weapons.";
        break;
    case 3:
        nameDraw = "Stone#Found from natural spawns on the ground.#Used to craft stone tools and other items.";
        break;
    case 4:
        nameDraw = "Flint#Found from natural spawns on the ground.#Used to craft lighters and arrows.";
        break;
    case 5:
        nameDraw = "Torch#Crafted from items.#Used to light up the environment.";
        break;
    case 6:
        nameDraw = "Bow#Crafted from items.#A weapon that can be used in compact.";
        break;
    case 7:
        nameDraw = "Arrow#Crafted from items.#Used in bows.";
        break;
    case 8:
        nameDraw = "Scraper#Crafted from stone.#Used to craft a lot of items and tools.";
        break;
    case 9:
        nameDraw = "Biofuel#Crafted from items.#Used to craft torches and firepits.";
        break;
    case 10:
        nameDraw = "Sharpened Arrow#Crafted from normal arrows and other items.#Added damage to normal arrows.";
        break;
    case 11:
        nameDraw = "Flint Lighter#Crafted with items.#Used to light fireplaces and torches.";
        break;
    case 12:
        nameDraw = "Crate#Crafted with items.#Used to collect water to cook food.";
        break;
    case 13:
        nameDraw = "Softened Acorn#Cooked with a firepit and a crate of water.#Used to make acorn bread.";
        break;
    case 14:
        nameDraw = "Fire Pit#Crafted with items.#Used to light up the surrounding and cook food.";
        break;
    case 15:
        nameDraw = "Animal Hide#Dropped from wolves or bears.#Used to craft items.";
        break;
    case 16:
        nameDraw = "Dead Bird#Dropped when a crow is killed.#A food source.";
        break;
    case 17:
        nameDraw = "Cooked Bird#Cooked from dead birds.#A food source.";
        break;
    case 18:
        nameDraw = "Rope#Crafted from twine.#Used to craft items.";
        break;
    case 19:
        nameDraw = "Acorn Flour#Crafted from softened acorns.#Used to craft acorn bread.";
        break;
    case 20:
        nameDraw = "Shelter#Crafted from items.#Used to keep you warm.";
        break;
    case 21:
        nameDraw = "Roofed Shelter#Crafted from items.#Used to keep you warm and sane.";
        break;
    case 22:
        nameDraw = "Undead Essence#Dropped from zombies and mutants.#";
        break;
    case 23:
        nameDraw = "Healing Salve#Crafted from undead essence.#Used to heal up some health.";
        break;
    case 24:
        nameDraw = "Loaf of Acorn Bread#Crafted from acorn flour.#A food source.";
        break;
    case 25:
        nameDraw = "Herb#Found from spawns on the ground.#Used as a food source and a crafting item.";
        break;
    case 26:
        nameDraw = "Charcoal#Found from burnt out torches.#Used to craft torches and stoke fires.";
        break;
    case 27:
        nameDraw = "Herbal Tea#Crafted from herbs and crates of water.#Used to regenerate some statistics.";
        break;
    case 28:
        nameDraw = "Feather#Found from dead birds.#Used to craft sharp arrows.";
        break;
    case 29:
        nameDraw = "Hooded Crate#Crafted from items#Used to store items.";
        break;
}
if(check_inventory_source() == "crate"){
    if(ID = contentID[i]){
        draw_set_font(fnt_tooltips);
        draw_text(mouse_x + 8, mouse_y + 8, string_hash_to_newline(nameDraw));
    }
    draw_set_font(fnt_normal);
} else if(check_inventory_source() == "inv"){
    if(ID = global.slotID[i]){
        draw_set_font(fnt_tooltips);
        draw_text(mouse_x + 8, mouse_y + 8, string_hash_to_newline(nameDraw));
    }
    draw_set_font(fnt_normal);
}

