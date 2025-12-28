if(keyboard_check_pressed(vk_enter)){
    count--;
}

if(count <= 0){
    room_goto(Secret);
}