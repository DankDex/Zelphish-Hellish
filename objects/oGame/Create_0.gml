//Set global variables
globalvar grid;
globalvar debug;
globalvar pause;
globalvar money;
debug = false;
pause = false;
money = 0;

global.partSystem = part_system_create_layer("Particles", false);
global.partSystem_top = part_system_create_layer("Particles", false);
part_system_depth(global.partSystem_top, layer_get_depth("Enemies")-1);

//execute initialization script
script_execute(init);

//Set cursor sprite
if(room != rMenu)
	cursor_sprite = sCursor;
window_set_cursor(cr_none);