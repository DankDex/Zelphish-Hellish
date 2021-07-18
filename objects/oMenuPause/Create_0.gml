/// @description Start Variables

vWidth = view_wport[0];
vHeight = view_yport[0];

particles = instance_create_layer(x,y,"Menus", o_part_emitter_wiggle);

// create the list for the menu
menu = ds_list_create();	// list of menu items
ds_list_add(menu, "Continue", "Config", "Restart", "Go to Main Menu", "Exit Game");	// the menu items, add or remove items to customize

// menu selected
selected = 0;	// number of the list above that start selected (the first one is 0, the second one is 1 and so on)

// menu variables
menu_start_position = 350;	// start y position of the menu
menu_separation = 60;		// y sepraration between menu items
angle = 0;	// used for arrow side animation
delta_x = 10;	// maximum x movement for the arrow animation
arrow_width = 500; // amount of pixels of distance between arrows
arrow_sprite = sArrow;	// sprite of the arrow
arrow_scale = 1;	// scale of the arrow sprite

// text variables
// title
title_text = "Pause";	// the title of the menu
title_color = c_red;	// the title color
title_font = fn60;	// the title font
title_shadow_offset = 5;	// the title shadow offset
title_shadow_color = c_dkgray;	// the title shadow color
title_shadow_alpha = 1;	// the title shadow alpha

// menu items
menu_font = fn30;	// the menu items font
menu_selected_color = c_white;	// the menu selected item color and this affects the color blend of the arrow
menu_not_selected_color = c_gray;	// the menu not selected items color
menu_shadow_offset = 2;	// the menu items and arrow shadow offset
menu_shadow_alpha = 1;	// the menu items shadow alpha
menu_shadow_color = c_dkgray;	// the menu items shadow color

// sounds
sound_change = sndSelect;	// sound when changing the selection
sound_confirmation = sndConfirmation;	// sound when selecting a menu item

// menu control buttoms
menu_confirmation_buttom = vk_enter;	// the buttom to confirm the menu item selected
menu_up_buttom = vk_up;	// the buttom to change the menu item
menu_down_buttom = vk_down;	// the buttom to change the menu item