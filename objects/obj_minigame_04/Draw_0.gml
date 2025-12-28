draw_self();

draw_set_font(DungGeunMo_Big);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, room_height/2, string(value));

draw_set_font(DungGeunMo_Big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(room_width/2,180, "버튼을 누르세요!");  

if(global.success == true) draw_text(room_width/2, 200, "success");