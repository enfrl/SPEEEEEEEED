var all_filled = true;

with (obj_minigame_01_num) {
    if (sprite_index == num_blank) {
        all_filled = false;
    }
}

if all_filled == true{
    switch (global.situation) {
    	case 0:
            if(num2.sprite_index == sel_num_3 && num4.sprite_index == sel_num_6 && num8.sprite_index == sel_num_5){
                //draw_set_font(DungGeunMo_Big);
                global.success = true;
            }
            else{
                //draw_set_font(DungGeunMo_Big);
                //draw_text(1563, 551, "실패.."); 
                num2.sprite_index = num_blank;
                num4.sprite_index = num_blank;
                num8.sprite_index = num_blank;
            }
        break;
        
        case 1:
            if(num3.sprite_index == sel_num_9 && num4.sprite_index == sel_num_6 && num5.sprite_index == sel_num_7){
                draw_set_font(DungGeunMo_Big);
                global.success = true;
            }
            else{
                draw_set_font(DungGeunMo_Big);
                draw_text(1563, 551, "실패..");
                num3.sprite_index = num_blank;
                num4.sprite_index = num_blank;
                num5.sprite_index = num_blank;
            }
        break;
        
        /*case 2:
            if(num1.sprite_index == sel_num_2 && num4.sprite_index == sel_num_9 && num9.sprite_index == sel_num_8){
                global.success = true;
            }
            else{
                draw_set_font(DungGeunMo_Big);
                draw_text(1563, 551, "실패..");
                num3.sprite_index = num_blank;
                num4.sprite_index = num_blank;
                num5.sprite_index = num_blank;
            }
        break; */
    }
}