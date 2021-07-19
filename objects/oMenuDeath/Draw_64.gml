/// @description Draw menu items

// draw title
text_with_shaking_shadow(title_text, view_wport / 2, 20, title_font, fa_center, fa_top, title_shadow_offset, title_color, title_shadow_color, outline_color, 1, title_shadow_alpha, 1, 1);

// draw menu
var _number = ds_list_size(menu);

for (var i = 0; i < _number; i ++) {
	var _text = string(menu[| i]);
	var _color = menu_not_selected_color;
	if selected == i {
		_color = menu_selected_color;	
	}
	text_with_shaking_shadow(_text, view_wport / 2, menu_start_position + i * menu_separation, menu_font, fa_center, fa_middle, menu_shadow_offset, _color, menu_shadow_color, outline_color, 1, menu_shadow_alpha, 1, 1);	
}


// draw menu arrow
angle += 3;
var _dx = lengthdir_x(delta_x, angle);
var _delta_y = -3;
// left arrow
draw_sprite_ext(arrow_sprite, 0, view_wport / 2 - arrow_width / 2 + menu_shadow_offset + _dx, menu_start_position + selected * menu_separation + _delta_y + menu_shadow_offset, arrow_scale, arrow_scale, 0, menu_shadow_color, menu_shadow_alpha);
draw_sprite_ext(arrow_sprite, 0, view_wport / 2 - arrow_width / 2 + _dx, menu_start_position + selected * menu_separation + _delta_y, 1, 1, 0, menu_selected_color, 1);
// right arrow
draw_sprite_ext(arrow_sprite, 0, view_wport / 2 + arrow_width / 2 + menu_shadow_offset - _dx, menu_start_position + selected * menu_separation + _delta_y + menu_shadow_offset, -arrow_scale, arrow_scale, 0, menu_shadow_color, menu_shadow_alpha);
draw_sprite_ext(arrow_sprite, 0, view_wport / 2 + arrow_width / 2 - _dx, menu_start_position + selected * menu_separation + _delta_y, -1, 1, 0, menu_selected_color, 1);
