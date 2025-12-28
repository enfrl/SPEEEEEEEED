draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if(firsttext == true){
    draw_set_font(DungGeunMo_Big);
    draw_text(room_width/2, 240, "게임 결과");
}

if(secondtext == true){
    draw_set_font(DungGeunMo_Smol);
    draw_text(room_width/2, 480, "클리어한 게임 수: " + string((InGameManager.num)));
}

if(thirdtext == true){
    draw_set_font(DungGeunMo_Smol);
    draw_text(room_width/2, 600, "소요된 시간: " + string((InGameStartManager.ingame_timer / 60)));
}