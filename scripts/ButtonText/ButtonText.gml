function draw_button_text()
{
	if (text_font != noone)
	{
		draw_set_font(text_font);
	}
	else
	{
		draw_set_font(-1);
	}
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if (selected)
	{
		draw_set_color(item_selected_color);
	}
	else
	{
		draw_set_color(item_unselected_color);
	}
	
	draw_text(x, y, text);
}

function is_group_active()
{
	with (obj_menu_group)
	{
		if (group_id == other.item_group_id)
		{
			return group_visible;
		}
	}
	return false;
}

function has_mouse_moved()
{
	if (!is_group_active())
		return false;
	
	if (mouse_x != last_mouse_x or mouse_y != last_mouse_y)
	{
		last_mouse_x = mouse_x;
		last_mouse_y = mouse_y;
		return true;
	}
	
	return false;
}

function is_mouse_hovering()
{
	var _string_half_width = string_width(text);
	var _string_half_height = string_height(text);
	
	var _rect_min_x = x - _string_half_width;
	var _rect_min_y = y - _string_half_height;
	var _rect_max_x = x + _string_half_width;
	var _rect_max_y = y + _string_half_height;
	
	return point_in_rectangle(mouse_x, mouse_y, _rect_min_x, _rect_min_y, _rect_max_x, _rect_max_y);
}