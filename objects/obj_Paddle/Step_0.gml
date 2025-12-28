var next_x = x;

if (keyboard_check(vk_left)) {
    next_x -= move_speed;
}
if (keyboard_check(vk_right)) {
    next_x += move_speed;
}

// 기본 화면 범위 제한
next_x = clamp(next_x, 60, room_width - 60);

// 벽 충돌 체크 (패들의 양쪽 끝 확인)
var collision = false;

// 임시로 위치를 이동해서 충돌 체크
var old_x = x;
x = next_x;

if (place_meeting(x, y, obj_Wall_1) || place_meeting(x, y, obj_Wall_2)) {
    collision = true;
}

// 충돌이 있으면 원래 위치로 복구
if (collision) {
    x = old_x;
}

// 게임 종료 시 정지
if (instance_exists(obj_minigame_03)) {
    with(obj_minigame_03) {
        if (game_complete || game_over) {
            other.move_speed = 0;
            other.move_speed = 0;
            exit;
        }
    }
}