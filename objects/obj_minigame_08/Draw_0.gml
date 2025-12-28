// 배경색 및 텍스트 출력 (가이드 준수)
draw_set_font(DungGeunMo_Big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(room_width/2, 180, "로고를 정방향으로 돌리세요!");

// 준비된 스프라이트 그리기 (오브젝트를 룸 중앙에 배치하세요)
draw_self();