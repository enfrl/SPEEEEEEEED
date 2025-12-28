if (!global.success) {
    // 방향키로 조준 (기획서: 3, 6, 9, 12시 딱 떨어지게)
    if (keyboard_check_pressed(vk_right)) aim_dir = 0;   // 3시
    if (keyboard_check_pressed(vk_down))  aim_dir = 270; // 6시
    if (keyboard_check_pressed(vk_left))  aim_dir = 180; // 9:시
    if (keyboard_check_pressed(vk_up))    aim_dir = 90;  // 12시

    // Z키로 발사
    if (keyboard_check_pressed(ord("Z"))) {
        var idx = -1;
        if (aim_dir == 0)   idx = 0;
        if (aim_dir == 270) idx = 1;
        if (aim_dir == 180) idx = 2;
        if (aim_dir == 90)  idx = 3;
        
        if (idx != -1) targets[idx] = false; // 해당 방향 과녁 제거
    }

    // 모두 제거 확인
    if (!targets[0] && !targets[1] && !targets[2] && !targets[3]) {
        global.success = true;
    }
}