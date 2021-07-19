//Set global variables
globalvar grid;
globalvar debug;
globalvar pause;
debug = false;
pause = false;

global.partSystem = part_system_create_layer("Particles", false);

//execute initialization script
script_execute(init);

//Set cursor sprite
if(room != rMenu)
	cursor_sprite = sCursor;
window_set_cursor(cr_none);