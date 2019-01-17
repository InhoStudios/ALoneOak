/// @description drawName(i, ID);
/// @param i
/// @param  ID
var i = argument0;
var ID = argument1;
var nameDraw;

switch(ID){
    case 0:
        nameDraw = "Acorn";
        break;
    case 1:
        nameDraw = "Twig";
        break;
    case 2:
        nameDraw = "Twine";
        break;
    case 3:
        nameDraw = "Stone";
        break;
    case 4:
        nameDraw = "Flint";
        break;
    case 5:
        nameDraw = "Torch";
        break;
    case 6:
        nameDraw = "Bow";
        break;
    case 7:
        nameDraw = "Arrow";
        break;
    case 8:
        nameDraw = "Scraper";
        break;
    case 9:
        nameDraw = "Biofuel";
        break;
    case 10:
        nameDraw = "Sharpened Arrow";
        break;
    case 11:
        nameDraw = "Flint Lighter";
        break;
    case 12:
        nameDraw = "Crate";
        break;
    case 13:
        nameDraw = "Softened Acorn";
        break;
    case 14:
        nameDraw = "Fire Pit";
        break;
    case 15:
        nameDraw = "Animal Hide";
        break;
    case 16:
        nameDraw = "Dead Bird";
        break;
    case 17:
        nameDraw = "Cooked Bird";
        break;
    case 18:
        nameDraw = "Rope";
        break;
    case 19:
        nameDraw = "Acorn Flour";
        break;
    case 20:
        nameDraw = "Shelter";
        break;
    case 21:
        nameDraw = "Roofed Shelter";
        break;
    case 22:
        nameDraw = "Undead Essence";
        break;
    case 23:
        nameDraw = "Undead Heart";
        break;
    case 24:
        nameDraw = "Loaf of Acorn Bread";
        break;
    case 25:
        nameDraw = "Herb";
        break;
    case 26:
        nameDraw = "Charcoal";
        break;
    case 27:
        nameDraw = "Herbal Tea";
        break;
    case 28:
        nameDraw = "Feather";
        break;
    case 29:
        nameDraw = "Hooded Crate";
        break;
}

if(ID = global.slotID[i]){
    draw_set_font(fnt_tooltips);
    draw_text(mouse_x + 8, mouse_y + 16, string_hash_to_newline(nameDraw));
}
draw_set_font(fnt_normal);
