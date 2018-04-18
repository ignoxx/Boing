/// scr_handle_input()

var screen_width = browser_width;
var screen_height = browser_height;

//Keyboard inputs

var key_left = keyboard_check(vk_left) || keyboard_check(ord('A'));
var key_right = keyboard_check(vk_right) || keyboard_check(ord('D'));

var mouse, mx, my;
var mouse_left, mouse_right;

for(var i = 0; i < 4; i++){
    mouse[i] = device_mouse_check_button(i, mb_left); 
    mx[i] = device_mouse_x_to_gui(i);
    //my[i] = device_mouse_y_to_gui(i);
    
    if(mouse[i]){
        mouse_left = mx[i] < screen_width/2;
        mouse_right = mx[i] > screen_width/2;
    }
}

if(key_left || mouse_left)
    field_angle += 1;

if(key_right || mouse_right)
    field_angle -= 1;

var angle = field_angle;
with(pField){
    switch(type){
        case 0:
            phy_rotation =  -(angle + 90);
            phy_position_x = other.center_x + round( lengthdir_x(other.center_dist, angle) );
            phy_position_y = other.center_y + round( lengthdir_y(other.center_dist, angle) );
            
            physics_world_gravity(lengthdir_x(10, angle), lengthdir_y(10, angle));
            break;
            
        case 1:
            phy_rotation = -(angle + 90);
            phy_position_x = other.center_x - round( lengthdir_x(other.center_dist, angle) );
            phy_position_y = other.center_y - round( lengthdir_y(other.center_dist, angle) );
            break;
        
        case 2:
            phy_rotation = -(angle + 90);
            phy_position_x = other.center_x - round( lengthdir_x(other.center_dist, angle + 90) );
            phy_position_y = other.center_y - round( lengthdir_y(other.center_dist, angle + 90) );
            break;
        
        case 3:
            phy_rotation = -(angle + 90);
            phy_position_x = other.center_x + round( lengthdir_x(other.center_dist, angle + 90) );
            phy_position_y = other.center_y + round( lengthdir_y(other.center_dist, angle + 90) );
            break;
    }
}

//change room gravity

