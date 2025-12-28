draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if(countdown_letter == "START!"){
    draw_text_transformed(room_width/2, 810, countdown_letter, 1.5, 1.5, 0);
}
else{
    draw_text(room_width/2, 540, countdown_letter);
}
