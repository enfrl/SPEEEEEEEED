

if(keyboard_check_pressed(vk_space)){
    var current_sprite = sprite_index;
    with(obj_needle){
        var minigame_success = false;
        if(current_sprite == spr_CheckCircle1){
            if(current_angle <= -230 && current_angle >= -250) minigame_success = true;
        }
        else if(current_sprite == spr_CheckCircle2){
            if(current_angle <= -150 && current_angle >= -170) minigame_success = true;
        }
        else if(current_sprite == spr_CheckCircle3){
            if(current_angle <= -320 && current_angle >= -340) minigame_success = true;
        }
        
        if(minigame_success = true) global.success = true;
            else obj_needle.image_angle += 90;
    }
}