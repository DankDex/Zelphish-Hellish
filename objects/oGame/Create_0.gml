//Set global variables
globalvar grid;
globalvar debug;
globalvar pause;
globalvar money;
debug = false;
pause = false;
money = 0;

//execute initialization script
script_execute(init);

//Set cursor sprite
if(room != rMenu)
	cursor_sprite = sCursor;
window_set_cursor(cr_none);