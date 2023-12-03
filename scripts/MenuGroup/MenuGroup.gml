function set_active_group(_menu_group_id)
{
	with (obj_menu_group)
	{
		group_visible = _menu_group_id == group_id;
	}
}

function get_group(_menu_group_id)
{
	with (obj_menu_group)
	{
		if (group_id == _menu_group_id)
		{
			return self;
		}
	}
}

function update_items_state()
{
	with (obj_menu_item)
	{
		if (item_group_id != other.group_id)
		{
			continue;
		}
		selected = item_order_index == other.selected_item_index;
	}
}

function select_item(_item_index)
{
	if (_item_index < 0)
	{
		selected_item_index = _get_highest_item_index();
	}
	else
	{
		selected_item_index = _get_next_valid_item_index(_item_index);
	}
	update_items_state()
}

function _get_highest_item_index()
{
	var _highest_index = 0;
	with (obj_menu_item)
	{
		if (item_group_id != other.group_id)
		{
			continue;
		}
		if (item_order_index > _highest_index)
		{
			_highest_index = item_order_index;
		}
	}
	return _highest_index;
}

function _get_next_valid_item_index(_target_index)
{
	var _found_target_index = false;
	with (obj_menu_item)
	{
		if (item_group_id != other.group_id)
		{
			continue;
		}
		if (item_order_index == _target_index)
		{
			_found_target_index = true;
			break;
		}
	}
	if (_found_target_index)
	{
		return _target_index;
	}
	return 0;
}