if (state == "show") {
    show_timer += 1;
    if (show_timer >= 30) {
        show_timer = 0;
        show_index += 1;
        if (show_index == array_length(numbers)) {
            state = "input";
            input_string = "";
        }
    }
}

if (state == "input") {
    for (var i = 0; i <= 9; i++) {
        if (keyboard_check_pressed(ord(string(i)))) {
            input_string += string(i);
        }
    }

    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(input_string) > 0) {
            input_string = string_delete(input_string, string_length(input_string), 1);
        }
    }

   if (keyboard_check_pressed(vk_enter)) {
        var correct = "";
        for (var j = 0; j < array_length(numbers); j++) {
            correct += string(numbers[j]);
        }

        if (input_string == correct) {
            global.success = true;
            state = "success"; 
        } else {
            global.success = false;
            InitializeGame();
        }
    }
}

if(keyboard_check_pressed(ord("R"))) InitializeGame();