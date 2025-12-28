// 케이스 3개 
// 8 "3" 4 / "6" 7 2 / 1 "5" 9
// 1 5 "9" / "6" "7" 2 / 8 3 4
// "2" 7 6 / "9" 5 1 / 4 3 "8"

// 케이스 3개 중 1개 택하기
randomize();
global.situation = irandom_range(0, 1);

// 클리어 변수
global.success = false;

// 마방진 숫자생성
num1 = instance_create_layer(672, 416, "Instances", obj_minigame_01_num);
draw_self();
set_scale(num1);
num2 = instance_create_layer(864, 416, "Instances", obj_minigame_01_num);
set_scale(num2);
num3 = instance_create_layer(1056, 416, "Instances", obj_minigame_01_num);
set_scale(num3);
num4 = instance_create_layer(672, 608, "Instances", obj_minigame_01_num);
set_scale(num4);
num5 = instance_create_layer(864, 608, "Instances", obj_minigame_01_num);
set_scale(num5);
num6 = instance_create_layer(1056, 608, "Instances", obj_minigame_01_num);
set_scale(num6);
num7 = instance_create_layer(672, 801.5, "Instances", obj_minigame_01_num);
set_scale(num7);
num8 = instance_create_layer(864, 801.5, "Instances", obj_minigame_01_num);
set_scale(num8);
num9 = instance_create_layer(1056, 801.5, "Instances", obj_minigame_01_num);
set_scale(num9);

// 마방진 그리드 생성
numgrid = instance_create_layer(864, 416, "Instances", obj_minigame_01_Grid);

set_scale(numgrid);

global.currentgrid = num5;

switch(global.situation) {
    case 0:
        set_sudoku_grid([num_8, num_blank, num_4, num_blank, num_7, num_2, num_1, num_blank, num_9]);
        break;
    case 1:
        set_sudoku_grid([num_1, num_5, num_blank, num_blank, num_blank, num_2, num_8, num_3, num_4]);
        break;
   // case 2:
    //    set_sudoku_grid([num_blank, num_7, num_6, num_blank, num_5, num_1, num_4, num_3, num_blank]);
    //    break;
}


// 마방진 그리드 변수설정
function set_sudoku_grid(sprites_array) {
    var instances = [num1, num2, num3, num4, num5, num6, num7, num8, num9];
    for (var i = 0; i < 9; i++) {
        instances[i].sprite_index = sprites_array[i];
    }
}

// 스프라이트 크기 정상화
function set_scale(sprites){
    sprites.image_xscale = 20.1;
    sprites.image_yscale = 20.1;
}

