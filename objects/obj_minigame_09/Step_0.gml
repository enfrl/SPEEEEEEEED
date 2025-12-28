if (game_complete && keyboard_check_pressed(vk_enter)) {
    global.success = true;
}

if (game_over) {
    // 게임 재시작 - obj_minigame_03 초기화
    global.success = false;
    game_complete = false;
    game_over = false;
    game_started = true;
    
    // obj_Ball 초기화
    if (instance_exists(obj_Ball)) {
        with(obj_Ball) {
            x = xstart;
            y = ystart;
            Ball_speed_x = random_range(-3, 3);
            Ball_speed_y = 5;
            bounce_count = 0;
            started = true;
            first_bounce = false;
        }
    }
    
    // obj_Paddle 초기화
    if (instance_exists(obj_Paddle)) {
        with(obj_Paddle) {
            x = room_width/2;
            y = room_height - 275;
            move_speed = 14;
        }
    }
}
