if(hasPressedEnter == false){
    draw_set_color(c_white);
    input = keyboard_string;
    if(keyboard_check_pressed(vk_enter)){
        hasPressedEnter = true;
    }
}
