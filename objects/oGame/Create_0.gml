globalvar grid;
globalvar debug;
globalvar pause;
debug = false;
pause = false;

global.partSystem = part_system_create_layer("Particles", false);

script_execute(init);

cursor_sprite = sCursor;
window_set_cursor(cr_none);