minigame_list = [
    obj_minigame_00,
    obj_minigame_01,
    obj_minigame_02,
    obj_minigame_03,
    obj_minigame_04,
    obj_minigame_05,
    obj_minigame_06,
    obj_minigame_07,
    obj_minigame_08,
    obj_minigame_09,
    obj_minigame_10,
    obj_minigame_last,
];

// 현재 실행중 아닌 미니게임 제거
for(i = 0; i < array_length(minigame_list); i++){
    with(minigame_list[i]){
        instance_deactivate_object(id);
    }
}

num = 0;
global.current_minigame = noone;
global.success = false;

var selected_minigame = minigame_list[0];
game_started = false;

// 타이핑으로 게임 시작
function gameStart(k){
     if (instance_exists(global.current_minigame)) {
        instance_destroy(global.current_minigame);
        }
        global.current_minigame = instance_create_layer(0, 0, "instances", minigame_list[num]);
        
        // 미니게임 감지해 생성하는 오브젝트 다르게
        if(minigame_list[num] == obj_minigame_00){
            global.current_minigame_textbox = instance_create_layer(0, 0, "instances", obj_minigame_00_Textbox);
        }
        else if(minigame_list[num] == obj_minigame_01){
            instance_create_layer(0, 0, "instances", obj_minigame_01_Grid);
            instance_create_layer(0, 0, "instances", obj_minigame_01_num);
        }
        else if(minigame_list[num] == obj_minigame_04){
            minigame_list[num].x = room_width/2;
            minigame_list[num].y = room_height/2;
            minigame_list[num].image_xscale = 14;
            minigame_list[num].image_yscale = 14;
        }
        else if(minigame_list[num] == obj_minigame_09){
            instance_create_layer(896, 448, "instances", obj_Ball);
            instance_create_layer(896, 640, "instances", obj_Paddle);
            instance_create_layer(672, 416, "instances", obj_Wall_1);
            instance_create_layer(672, 416, "instances",obj_Wall_2);
            instance_create_layer(1216, 416, "instances", obj_Wall_2);
            instance_create_layer(672, 832, "instances", obj_Wall_3);
        }
        //else if(minigame_list[num] == obj_minigame_05){
            
        //}
}

//(instance_exists(global.current_minigame)){
//    if(global.current_minigame.success == true){
//    instance_destroy(global.current_minigame);
//    num += 1;
//}}

// global.success 받아와서 미니게임 삭제
function SuccessCheck(){
    if (global.success == true) {

        // 현재 미니게임 존재 여부 체크
        if (instance_exists(global.current_minigame)) {

            switch (global.current_minigame.object_index) {
                
                case obj_minigame_00:
                    instance_destroy(global.current_minigame);
                    if (instance_exists(global.current_minigame_textbox)) {
                        instance_destroy(global.current_minigame_textbox);
                    }
                    break;

                case obj_minigame_01:
                    instance_destroy(global.current_minigame);
                    with (obj_minigame_01_Grid) instance_destroy();
                    with (obj_minigame_01_num) instance_destroy();
                    break;

                case obj_minigame_02:
                    instance_destroy(global.current_minigame);
                    with(obj_pipe) instance_destroy();
                    with(obj_start) instance_destroy();
                    with(obj_end) instance_destroy();
                    with(obj_minigame_02) instance_destroy();
                        show_debug_message("미니게임2 삭제완료");
                    break;
                
                case obj_minigame_03:
                    instance_destroy(global.current_minigame);
                    with(obj_minigame_03) instance_destroy();
                    
                    break;
                
                case obj_minigame_04:
                    instance_destroy(global.current_minigame);
                
                case obj_minigame_05:
                    instance_destroy(global.current_minigame);
                    with(obj_SkillCheckCircle) instance_destroy();
                    with(obj_needle) instance_destroy();
                
                case obj_minigame_06:
                    instance_destroy(global.current_minigame);
                
                case obj_minigame_07:
                    instance_destroy(global.current_minigame);
                
                case obj_minigame_08:
                    instance_destroy(global.current_minigame);
                
                case obj_minigame_09:
                    instance_destroy(global.current_minigame);
                    with(obj_Ball) instance_destroy();
                    with(obj_Paddle) instance_destroy();
                    with(obj_Wall_1) instance_destroy();
                    with(obj_Wall_2) instance_destroy();
                    with(obj_Wall_3) instance_destroy();  
               
               case obj_minigame_10:
                   instance_destroy(global.current_minigame);          
            }

            global.current_minigame = noone; // 삭제 후 초기화
        }

        // 다음 미니게임 시작
        num++;
        if (num < array_length(minigame_list)) {
            audio_play_sound(snd_next, 10, false);
            gameStart(num);
        } else {
            show_debug_message("모든 미니게임 종료됨!");
        }

        global.success = false;
    }
}
