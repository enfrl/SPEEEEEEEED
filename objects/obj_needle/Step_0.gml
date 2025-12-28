if(image_angle <= -360) image_angle = 0;
    else{ 
        image_angle--;
        image_angle--;
        image_angle--;
        image_angle--;
        }
if(keyboard_check_pressed(vk_space)){
    current_angle = image_angle;
}