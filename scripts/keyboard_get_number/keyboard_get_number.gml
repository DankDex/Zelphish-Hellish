/// @function       keyboard_get_number()
/// @description    Returns the pressed number key and -1 if none.
function keyboard_get_number(){

return 
(
    (keyboard_key >= ord("0") && keyboard_key <= ord("9"))
    ? keyboard_key - ord("0")
    : -1
);

}