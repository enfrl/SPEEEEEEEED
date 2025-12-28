draw_self();
draw_set_font(DungGeunMo_Big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(room_width/2, 180, "키를 모두 누르세요!");

if(key1 == false) draw_text(320, 540, chr(random_key[0]));
if(key2 == false) draw_text(640, 540, chr(random_key[1]));
if(key3 == false) draw_text(960, 540, chr(random_key[2]));
if(key4 == false) draw_text(1280, 540, chr(random_key[3]));
if(key5 == false) draw_text(1600, 540, chr(random_key[4]));