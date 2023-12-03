function draw_slider()
{
	draw_set_color(item_unselected_color);
	
	var _string_half_width = string_width(text) / 2;
	var _string_half_height = string_height(text) / 2;
	
	var _min_x = x - _string_half_width;
	var _y     = y + _string_half_height;
	var _max_x = x + _string_half_width;
	var _line_width = 3;
	
	draw_line_width(_min_x, _y, _max_x, _y, _line_width);
	
	draw_set_color(item_selected_color);
	
	_max_x = _min_x + (_max_x - _min_x) * slider_value;
	
	draw_line_width(_min_x, _y, _max_x, _y, _line_width);
}

function set_slider_value(_value)
{
	slider_value = clamp(_value, 0.0, 1.0);
}