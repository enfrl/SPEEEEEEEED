function blankCheck(){
    if (global.currentgrid.sprite_index != num_blank) return;

    if (keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord("1"))) {
        global.currentgrid.sprite_index = sel_num_1;
    } 
    else if (keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord("2"))) {
        global.currentgrid.sprite_index = sel_num_2;
    } 
    else if (keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord("3"))) {
        global.currentgrid.sprite_index = sel_num_3;
    } 
    else if (keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(ord("4"))) {
        global.currentgrid.sprite_index = sel_num_4;
    } 
    else if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(ord("5"))) {
        global.currentgrid.sprite_index = sel_num_5;
    } 
    else if (keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(ord("6"))) {
        global.currentgrid.sprite_index = sel_num_6;
    } 
    else if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(ord("7"))) {
        global.currentgrid.sprite_index = sel_num_7;
    } 
    else if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord("8"))) {
        global.currentgrid.sprite_index = sel_num_8;
    } 
    else if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(ord("9"))) {
        global.currentgrid.sprite_index = sel_num_9;
    }
}