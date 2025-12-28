draw_set_font(DungGeunMo_Big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_text(room_width/2, 120, "LAST!!!!!");

draw_set_color(c_white);
draw_text(room_width/2, 250, "연타하세요!!!");


if (!global.success) {
    draw_set_font(DungGeunMo_ExtraBig);
    draw_text(room_width/2, room_height/2, string(click_remaining)); 
} else {
    InGameStartManager.game_finish = true;
    room_goto(Result);
}