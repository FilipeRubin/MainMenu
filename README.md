# MainMenu
Working main menu for a game to be made in Game Maker Studio 2.

# How it works
The application features generic implementations for menu utilities, such as buttons and sliders. To create a menu you must add an `obj_menu_group` to your room, assign an unique id to it and then add your _items_ (as they're called) to the same _room_, specifying the same id as the group they should belong to.
Some types of buttons already exist (such as a button to change _room_ or to show another group of _items_). If you want to create a button with a custom functionality, you must create a new _object_ child of `obj_menu_item` or `obj_button_text` (if it should feature centralized text).
You must use **Variable Definitions** in order to change individual (per-instance) item properties.

# Notes
The menu items featured in this demo are labeled in Portuguese.
