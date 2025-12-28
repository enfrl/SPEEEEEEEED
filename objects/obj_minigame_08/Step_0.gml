if (keyboard_check_pressed(ord("Z"))) {
        image_angle += 90;
    }
    // X키: 시계 방향(+90도)
    if (keyboard_check_pressed(ord("X"))) {
        image_angle -= 90;
    }

    // 각도가 0(또는 360의 배수)이 되면 성공
    // % 연산자를 써서 한 바퀴 돌아도 체크되게 합니다.
    if (image_angle % 360 == 0) {
        image_angle = 0; // 보기 좋게 0으로 고정
        global.success = true;
    }
