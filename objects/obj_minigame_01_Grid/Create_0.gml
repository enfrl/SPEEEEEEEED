/* (0, 0) (1, 0) (2, 0)
 * (0, 1) (1, 1) (2, 1)
 * (0, 2) (1, 2) (2, 2)
 */

// 현재 위치
cur_x = 1;
cur_y = 1;

// 그리드 세팅
gridpos[0][0] = 0;
gridpos[1][0] = 0;
gridpos[2][0] = 0;
gridpos[0][1] = 0;
gridpos[1][1] = 0;
gridpos[2][1] = 0;
gridpos[0][2] = 0;
gridpos[1][2] = 0;
gridpos[2][2] = 0;

// 현재 그리드값 1
gridpos[cur_x][cur_y] = 1

function move_grid(){
    if(gridpos[0][0] == 1){
    x = 672;
    y = 416;
    global.currentgrid = num_1;
}
else if(gridpos[1][0] == 1){
    x = 864;
    y = 416;
    global.currentgrid = obj_minigame_01.num2;
}
else if(gridpos[2][0] == 1){
    x = 1056;
    y = 416;
    global.currentgrid = obj_minigame_01.num3;
}
else if(gridpos[0][1] == 1){
    x = 672;
    y = 608;
    global.currentgrid = obj_minigame_01.num4;
}
else if(gridpos[1][1] == 1){
    x = 864;
    y = 608;
    global.currentgrid = obj_minigame_01.num5;
}
else if(gridpos[2][1] == 1){
    x = 1056;
    y = 608;
    global.currentgrid = obj_minigame_01.num6;
}
else if(gridpos[0][2] == 1){
    x = 672;
    y = 801.5;
    global.currentgrid = obj_minigame_01.num7;
}
else if(gridpos[1][2] == 1){
    x = 864;
    y = 801.5;
    global.currentgrid = obj_minigame_01.num8;
}
else if(gridpos[2][2] == 1){
    x = 1056;
    y = 801.5;
    global.currentgrid = obj_minigame_01.num9;
}
}

depth = -2;