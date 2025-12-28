draw_set_font(DungGeunMo_Big)

draw_set_halign(fa_center);
draw_set_valign(fa_top);

if (state == "show") {
    draw_set_colour(c_white);
    draw_text(room_width/2, 180, "암기하세요!")
    draw_set_font(DungGeunMo_Smol)
    draw_text(room_width/2, 320, "만약 모르겠으면 R키");
    draw_set_font(DungGeunMo_Big);
    if (show_index < array_length(numbers)) {
        draw_text(room_width/2, room_height/2 - 30, string(numbers[show_index]));
    }
} else {
    var y0 = room_height/2 - 100;
    var gap = 120;
    draw_set_colour(c_white);
    draw_text(room_width/2, 180, "입력하세요! (입력 후 ENTER)");
    draw_set_font(DungGeunMo_Smol)
    draw_text(room_width/2, 320, "만약 모르겠으면 R키");
    draw_set_font(DungGeunMo_Big);
    draw_text(room_width/2, y0 + gap + 20, input_string);
}