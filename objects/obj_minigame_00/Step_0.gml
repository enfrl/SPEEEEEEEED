if(obj_minigame_00_Textbox.hasPressedEnter == true){
    if(obj_minigame_00_Textbox.input == string(text_list[selected_num])){
        global.success = true;
        /*success = false;
        obj_minigame_00_Textbox.hasPressedEnter = false;
        obj_minigame_00_Textbox.input = "";
        randomize();
        selected_num = irandom_range(0,2);
         */
    }
    else{
        randomize();
        selected_num = irandom_range(0, 10);
        obj_minigame_00_Textbox.hasPressedEnter = false;
        //obj_minigame_00_Textbox.input = "";
        keyboard_string = "";
    }
}
