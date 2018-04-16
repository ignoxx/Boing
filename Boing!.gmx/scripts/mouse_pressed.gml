/// mouse_get_x()
// multitouch mouse click detection

var isPressed = false;
for(var i = 0; i < 4; i++){
    if device_mouse_check_button(i, mb_left) 
        return true;
}

return false;
