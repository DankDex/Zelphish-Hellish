//Set global variables
globalvar grid;
globalvar debug;
globalvar pause;
globalvar money;
globalvar num_enemies;
debug = false;
pause = false;
money = 0;
num_enemies = 999;

//execute initialization script
script_execute(init);

//Set cursor sprite
if(room != rMenu)
	cursor_sprite = sCursor;
window_set_cursor(cr_none);