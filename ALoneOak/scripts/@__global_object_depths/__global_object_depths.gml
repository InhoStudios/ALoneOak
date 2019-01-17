// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -6; // obj_player
global.__objectDepths[1] = 4; // obj_winter_tree
global.__objectDepths[2] = -1; // obj_item
global.__objectDepths[3] = -1; // obj_acorn
global.__objectDepths[4] = -1; // obj_twig
global.__objectDepths[5] = -1; // obj_twine
global.__objectDepths[6] = 0; // obj_stone_item
global.__objectDepths[7] = 0; // obj_stones
global.__objectDepths[8] = 0; // obj_flint
global.__objectDepths[9] = 0; // obj_torch
global.__objectDepths[10] = 0; // obj_bow
global.__objectDepths[11] = 0; // obj_arrow_item
global.__objectDepths[12] = 0; // obj_scraper
global.__objectDepths[13] = -1; // obj_biofuel
global.__objectDepths[14] = 0; // obj_sharp_arrow_item
global.__objectDepths[15] = 0; // obj_flint_lighter
global.__objectDepths[16] = 0; // obj_crate
global.__objectDepths[17] = -1; // obj_softened_acorn
global.__objectDepths[18] = 0; // obj_fireplace
global.__objectDepths[19] = 0; // obj_animal_hide
global.__objectDepths[20] = 0; // obj_dead_bird
global.__objectDepths[21] = 0; // obj_cooked_bird
global.__objectDepths[22] = -1; // obj_reinforced_twine
global.__objectDepths[23] = -1; // obj_acorn_flour
global.__objectDepths[24] = 0; // obj_shelter_item
global.__objectDepths[25] = 0; // obj_reinforced_shelter_item
global.__objectDepths[26] = 0; // obj_undead_essence
global.__objectDepths[27] = 0; // obj_undead_heart
global.__objectDepths[28] = 0; // obj_acorn_bread
global.__objectDepths[29] = 0; // obj_herb
global.__objectDepths[30] = 0; // obj_herbs
global.__objectDepths[31] = 0; // obj_charcoal
global.__objectDepths[32] = -1; // obj_herbal_tea
global.__objectDepths[33] = -1; // obj_soup
global.__objectDepths[34] = 0; // obj_feather
global.__objectDepths[35] = 3; // obj_hooded_crate
global.__objectDepths[36] = 0; // obj_unstackable_item
global.__objectDepths[37] = 0; // obj_item_stack
global.__objectDepths[38] = 0; // obj_grass
global.__objectDepths[39] = 0; // obj_stone
global.__objectDepths[40] = -6; // obj_block
global.__objectDepths[41] = 0; // obj_zombie
global.__objectDepths[42] = 0; // obj_zombie_boss
global.__objectDepths[43] = 0; // obj_bear
global.__objectDepths[44] = 0; // obj_mutant_bear
global.__objectDepths[45] = 0; // obj_bear_boss
global.__objectDepths[46] = 0; // obj_mutant_bear_boss
global.__objectDepths[47] = 0; // obj_self_boss
global.__objectDepths[48] = 0; // obj_wolf
global.__objectDepths[49] = 0; // obj_mutant_wolf
global.__objectDepths[50] = 0; // obj_wolf_boss
global.__objectDepths[51] = 0; // obj_mutant_wolf_boss
global.__objectDepths[52] = 0; // obj_crow
global.__objectDepths[53] = 0; // obj_mutant_crow
global.__objectDepths[54] = 0; // obj_mutant_bird_boss
global.__objectDepths[55] = 0; // obj_crow_spawner
global.__objectDepths[56] = 0; // obj_spawner
global.__objectDepths[57] = 0; // obj_hallucinations
global.__objectDepths[58] = 0; // obj_entity
global.__objectDepths[59] = 0; // obj_enemy
global.__objectDepths[60] = -1; // obj_vslider
global.__objectDepths[61] = -1; // obj_master_slider
global.__objectDepths[62] = -1; // obj_weatherSlider
global.__objectDepths[63] = -1; // obj_musicSlider
global.__objectDepths[64] = 0; // obj_play_button
global.__objectDepths[65] = 0; // obj_menu_main
global.__objectDepths[66] = 0; // obj_vbar
global.__objectDepths[67] = 0; // obj_pause_display
global.__objectDepths[68] = 0; // obj_quit
global.__objectDepths[69] = 0; // obj_survival
global.__objectDepths[70] = -100; // obj_controls
global.__objectDepths[71] = -100; // obj_bug
global.__objectDepths[72] = 0; // obj_rain
global.__objectDepths[73] = -150; // obj_lightning
global.__objectDepths[74] = 0; // obj_snow
global.__objectDepths[75] = 1000; // obj_sun
global.__objectDepths[76] = 0; // obj_menu_snow_creator
global.__objectDepths[77] = 0; // obj_weather_emitter
global.__objectDepths[78] = 0; // obj_days_counter
global.__objectDepths[79] = 0; // obj_lightning_spawner
global.__objectDepths[80] = -10; // obj_dn_cycle
global.__objectDepths[81] = -999; // inventory
global.__objectDepths[82] = -999; // crafting
global.__objectDepths[83] = 10; // obj_structure_background
global.__objectDepths[84] = 2; // obj_structure
global.__objectDepths[85] = 2; // obj_stone_struc
global.__objectDepths[86] = 10; // obj_stone_struc_back
global.__objectDepths[87] = 0; // obj_stairs
global.__objectDepths[88] = 0; // obj_right_stairs
global.__objectDepths[89] = 0; // obj_particle_parent
global.__objectDepths[90] = -10; // obj_blood_part
global.__objectDepths[91] = 0; // obj_fade_part_parent
global.__objectDepths[92] = -50; // obj_blood_splatter
global.__objectDepths[93] = 0; // obj_world_generator
global.__objectDepths[94] = 0; // obj_player_damage
global.__objectDepths[95] = 0; // obj_enemy_damage
global.__objectDepths[96] = 0; // obj_bg_controller
global.__objectDepths[97] = 0; // obj_pause
global.__objectDepths[98] = 0; // obj_from_pause_menu
global.__objectDepths[99] = 0; // volume_manager
global.__objectDepths[100] = -998; // obj_dir_arrow
global.__objectDepths[101] = 0; // obj_arrow
global.__objectDepths[102] = 0; // obj_sharp_arrow
global.__objectDepths[103] = 1000; // obj_warmth_collision
global.__objectDepths[104] = 0; // obj_load_game
global.__objectDepths[105] = -99999; // obj_game_save
global.__objectDepths[106] = 0; // obj_explosion
global.__objectDepths[107] = 0; // obj_view_follow
global.__objectDepths[108] = 0; // obj_revives
global.__objectDepths[109] = 0; // obj_fs
global.__objectDepths[110] = 0; // obj_to_main_menu
global.__objectDepths[111] = -10000; // obj_hallucination_fade
global.__objectDepths[112] = -10000; // obj_hit_red
global.__objectDepths[113] = -10000; // obj_low_hp
global.__objectDepths[114] = 0; // obj_warp
global.__objectDepths[115] = 0; // obj_reinforced_shelter
global.__objectDepths[116] = 0; // obj_shelter
global.__objectDepths[117] = -999; // obj_left_right_craft_pages
global.__objectDepths[118] = 0; // game


global.__objectNames[0] = "obj_player";
global.__objectNames[1] = "obj_winter_tree";
global.__objectNames[2] = "obj_item";
global.__objectNames[3] = "obj_acorn";
global.__objectNames[4] = "obj_twig";
global.__objectNames[5] = "obj_twine";
global.__objectNames[6] = "obj_stone_item";
global.__objectNames[7] = "obj_stones";
global.__objectNames[8] = "obj_flint";
global.__objectNames[9] = "obj_torch";
global.__objectNames[10] = "obj_bow";
global.__objectNames[11] = "obj_arrow_item";
global.__objectNames[12] = "obj_scraper";
global.__objectNames[13] = "obj_biofuel";
global.__objectNames[14] = "obj_sharp_arrow_item";
global.__objectNames[15] = "obj_flint_lighter";
global.__objectNames[16] = "obj_crate";
global.__objectNames[17] = "obj_softened_acorn";
global.__objectNames[18] = "obj_fireplace";
global.__objectNames[19] = "obj_animal_hide";
global.__objectNames[20] = "obj_dead_bird";
global.__objectNames[21] = "obj_cooked_bird";
global.__objectNames[22] = "obj_reinforced_twine";
global.__objectNames[23] = "obj_acorn_flour";
global.__objectNames[24] = "obj_shelter_item";
global.__objectNames[25] = "obj_reinforced_shelter_item";
global.__objectNames[26] = "obj_undead_essence";
global.__objectNames[27] = "obj_undead_heart";
global.__objectNames[28] = "obj_acorn_bread";
global.__objectNames[29] = "obj_herb";
global.__objectNames[30] = "obj_herbs";
global.__objectNames[31] = "obj_charcoal";
global.__objectNames[32] = "obj_herbal_tea";
global.__objectNames[33] = "obj_soup";
global.__objectNames[34] = "obj_feather";
global.__objectNames[35] = "obj_hooded_crate";
global.__objectNames[36] = "obj_unstackable_item";
global.__objectNames[37] = "obj_item_stack";
global.__objectNames[38] = "obj_grass";
global.__objectNames[39] = "obj_stone";
global.__objectNames[40] = "obj_block";
global.__objectNames[41] = "obj_zombie";
global.__objectNames[42] = "obj_zombie_boss";
global.__objectNames[43] = "obj_bear";
global.__objectNames[44] = "obj_mutant_bear";
global.__objectNames[45] = "obj_bear_boss";
global.__objectNames[46] = "obj_mutant_bear_boss";
global.__objectNames[47] = "obj_self_boss";
global.__objectNames[48] = "obj_wolf";
global.__objectNames[49] = "obj_mutant_wolf";
global.__objectNames[50] = "obj_wolf_boss";
global.__objectNames[51] = "obj_mutant_wolf_boss";
global.__objectNames[52] = "obj_crow";
global.__objectNames[53] = "obj_mutant_crow";
global.__objectNames[54] = "obj_mutant_bird_boss";
global.__objectNames[55] = "obj_crow_spawner";
global.__objectNames[56] = "obj_spawner";
global.__objectNames[57] = "obj_hallucinations";
global.__objectNames[58] = "obj_entity";
global.__objectNames[59] = "obj_enemy";
global.__objectNames[60] = "obj_vslider";
global.__objectNames[61] = "obj_master_slider";
global.__objectNames[62] = "obj_weatherSlider";
global.__objectNames[63] = "obj_musicSlider";
global.__objectNames[64] = "obj_play_button";
global.__objectNames[65] = "obj_menu_main";
global.__objectNames[66] = "obj_vbar";
global.__objectNames[67] = "obj_pause_display";
global.__objectNames[68] = "obj_quit";
global.__objectNames[69] = "obj_survival";
global.__objectNames[70] = "obj_controls";
global.__objectNames[71] = "obj_bug";
global.__objectNames[72] = "obj_rain";
global.__objectNames[73] = "obj_lightning";
global.__objectNames[74] = "obj_snow";
global.__objectNames[75] = "obj_sun";
global.__objectNames[76] = "obj_menu_snow_creator";
global.__objectNames[77] = "obj_weather_emitter";
global.__objectNames[78] = "obj_days_counter";
global.__objectNames[79] = "obj_lightning_spawner";
global.__objectNames[80] = "obj_dn_cycle";
global.__objectNames[81] = "inventory";
global.__objectNames[82] = "crafting";
global.__objectNames[83] = "obj_structure_background";
global.__objectNames[84] = "obj_structure";
global.__objectNames[85] = "obj_stone_struc";
global.__objectNames[86] = "obj_stone_struc_back";
global.__objectNames[87] = "obj_stairs";
global.__objectNames[88] = "obj_right_stairs";
global.__objectNames[89] = "obj_particle_parent";
global.__objectNames[90] = "obj_blood_part";
global.__objectNames[91] = "obj_fade_part_parent";
global.__objectNames[92] = "obj_blood_splatter";
global.__objectNames[93] = "obj_world_generator";
global.__objectNames[94] = "obj_player_damage";
global.__objectNames[95] = "obj_enemy_damage";
global.__objectNames[96] = "obj_bg_controller";
global.__objectNames[97] = "obj_pause";
global.__objectNames[98] = "obj_from_pause_menu";
global.__objectNames[99] = "volume_manager";
global.__objectNames[100] = "obj_dir_arrow";
global.__objectNames[101] = "obj_arrow";
global.__objectNames[102] = "obj_sharp_arrow";
global.__objectNames[103] = "obj_warmth_collision";
global.__objectNames[104] = "obj_load_game";
global.__objectNames[105] = "obj_game_save";
global.__objectNames[106] = "obj_explosion";
global.__objectNames[107] = "obj_view_follow";
global.__objectNames[108] = "obj_revives";
global.__objectNames[109] = "obj_fs";
global.__objectNames[110] = "obj_to_main_menu";
global.__objectNames[111] = "obj_hallucination_fade";
global.__objectNames[112] = "obj_hit_red";
global.__objectNames[113] = "obj_low_hp";
global.__objectNames[114] = "obj_warp";
global.__objectNames[115] = "obj_reinforced_shelter";
global.__objectNames[116] = "obj_shelter";
global.__objectNames[117] = "obj_left_right_craft_pages";
global.__objectNames[118] = "game";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for