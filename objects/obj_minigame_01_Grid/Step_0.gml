// 방향키로 이동
if(keyboard_check_pressed(vk_right)){
    if(cur_x < 2) cur_x++;
}
if(keyboard_check_pressed(vk_left)){
    if(cur_x > 0) cur_x--;
}
if(keyboard_check_pressed(vk_up)){
    if(cur_y > 0) cur_y--;
}
if(keyboard_check_pressed(vk_down)){
    if(cur_y < 2) cur_y++;
}

// 현재 그리드가 아니면 0값으로 초기화
for(var i = 0; i < 3; i++){
    for(var j = 0; j < 3; j++){
        gridpos[i][j] = 0;
    }
}

// 현재 그리드 1
gridpos[cur_x][cur_y] = 1;

// 그리드값 1인 곳으로 오브젝트 이동
move_grid();