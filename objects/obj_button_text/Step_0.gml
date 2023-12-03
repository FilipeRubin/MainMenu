event_inherited();

if (has_mouse_moved() and is_mouse_hovering())
{
	with (get_group(item_group_id))
	{
		select_item(other.item_order_index);
	}
}