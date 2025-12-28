if (!global.success) {
    if (keyboard_check_pressed(vk_space)) {
        click_remaining--;
    }

    if (click_remaining <= 0) {
        global.success = true;
    }
}