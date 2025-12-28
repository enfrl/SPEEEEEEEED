// 0: down 1: left 2: right 3: up

var current_selection = -1;
hasInput = false;

if(keyboard_check_pressed(vk_down)) {
    current_selection = 0;
    hasInput = true;
}
if(keyboard_check_pressed(vk_up)) {
    current_selection = 3;
    hasInput = true;
}
if(keyboard_check_pressed(vk_right)) {
    current_selection = 2;
    hasInput = true;
}
if(keyboard_check_pressed(vk_left)) {
    current_selection = 1;
    hasInput = true;
}

if (hasInput == true) {
    if (current_selection == curTask) {
        instance_destroy(arrow_instances[taskIndex]);
        taskIndex++;
        if (taskIndex >= array_length(num_sequence)) global.success = true;
        else {
            curTask = num_sequence[taskIndex];
        }
    }
}
