if (!started) {
    exit;
}

// 게임이 완료되었거나 오버되었으면 멈춤
if (instance_exists(obj_minigame_03)) {
    with(obj_minigame_03) {
        if (game_complete || game_over) {
            other.ball_speed_x = 0;
            other.ball_speed_y = 0;
            exit;
        }
    }
}

ball_speed_y += gravity_force;

// 속도 제한
ball_speed_x = clamp(ball_speed_x, -max_speed, max_speed);
ball_speed_y = clamp(ball_speed_y, -max_speed, max_speed);

// 이동하기 전 위치 저장
var prev_x = x;
var prev_y = y;

// 이동
x += ball_speed_x;
y += ball_speed_y;

if (place_meeting(x, y, obj_Wall_3)) {
    global.success = false;
    if (instance_exists(obj_minigame_03)) {
        with(obj_minigame_03) {
            game_over = true;
        }
    }
    exit;
}

// 좌우 벽(obj_Wall_1, obj_Wall_2) 충돌 체크
var hit_wall_1 = place_meeting(x, y, obj_Wall_1);
var hit_wall_2 = place_meeting(x, y, obj_Wall_2);

if (hit_wall_1 || hit_wall_2) {
    // 이전 위치로 되돌리기
    x = prev_x;
    y = prev_y;
    
    // X축 충돌 체크
    var test_x = prev_x + ball_speed_x;
    var test_y = prev_y;
    if (place_meeting(test_x, test_y, obj_Wall_1) || place_meeting(test_x, test_y, obj_Wall_2)) {
        ball_speed_x = -ball_speed_x * 0.95;
    }
    
    // Y축 충돌 체크
    test_x = prev_x;
    test_y = prev_y + ball_speed_y;
    if (place_meeting(test_x, test_y, obj_Wall_1) || place_meeting(test_x, test_y, obj_Wall_2)) {
        ball_speed_y = -ball_speed_y * 0.9;
    }
    
    // 다시 이동 (수정된 속도로)
    x += ball_speed_x;
    y += ball_speed_y;
}

// 패들 충돌 체크
if (instance_exists(obj_Paddle) && place_meeting(x, y, obj_Paddle) && ball_speed_y > 0) {
    var paddle = instance_place(x, y, obj_Paddle);
    if (paddle != noone) {
        // 패들 위치로 Y 좌표 보정
        y = paddle.y - sprite_get_height(sprite_index)/2;
        
        // 패들에서의 상대적 위치 계산
        var hit_pos = (x - paddle.x) / 60;
        hit_pos = clamp(hit_pos, -1, 1);
        
        // 새로운 속도 계산
        ball_speed_x = hit_pos * 12;
        ball_speed_y = -abs(ball_speed_y) * random_range(1.5, 2.0);
        
        // 최소 위쪽 속도 보장
        if (abs(ball_speed_y) < 8) {
            ball_speed_y = -8;
        }
        
        bounce_count++;
        
        // 성공 체크
        if (bounce_count >= target_bounces) {
            global.success = true;
            if (instance_exists(obj_minigame_03)) {
                with(obj_minigame_03) {
                    game_complete = true;
                }
            }
        }
    }
}

// 좌우 벽 충돌
if (x < 0 || x > room_width) {
    ball_speed_x = -ball_speed_x;
    x = clamp(x, 0, room_width);
}

// 위쪽 벽 충돌
if (y < 0) {
    ball_speed_y = -ball_speed_y;
    y = 0;
}

// 화면 아래로 완전히 떨어지면 실패
if (y > room_height + 50) {
    global.success = false;
    if (instance_exists(obj_minigame_03)) {
        with(obj_minigame_03) {
            game_over = true;
        }
    }
}