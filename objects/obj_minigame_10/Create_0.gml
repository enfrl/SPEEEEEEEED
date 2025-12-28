global.success = false;

// 과녁 존재 여부 배열 (0:우, 1:하, 2:좌, 3:상)
targets = [true, true, true, true]; 
aim_dir = 0; // 현재 조준 방향 (0, 90, 180, 270)

// 과녁 위치 계산 (중앙에서 300픽셀 떨어진 곳)
dist = 300;
cx = room_width / 2;
cy = room_height * 3/5;