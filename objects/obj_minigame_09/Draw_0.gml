// 게임 진행 중
if (game_started && !game_complete && !game_over) {
    draw_set_font(DungGeunMo_Big);
    
    // 상단 타이틀
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text(room_width/2, 30, "공을 3번 튕기세요!");
}

// 완료 메시지
if (game_complete) {
    draw_set_font(DungGeunMo_Big);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    
    // 메인 텍스트
    draw_set_color(c_lime);
   // draw_text_transformed(room_width/2, room_height/2, "성공!", 4, 4, 0);
    
}
