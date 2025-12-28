draw_set_font(DungGeunMo_Big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(x, y, "20615 유지호" + "\n" + "11131 황시은" + "\n" + "11012 서승현"+"\n" +"10405 박준서");



if(keyboard_check(vk_f10)){
draw_set_font(DungGeunMo_Smol);
draw_text(x, y + 320, "special thanks to: 손동윤, 장환진, 김준기, 홍준서");
}


