// 가이드라인에 따른 초기화
global.success = false;

// 90, 180, 270도 중 하나로 무작위 시작 (0도는 정방향이라 제외)
image_angle = choose(90, 180, 270);

x = room_width/2;
y = room_height/2;