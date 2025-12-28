randomize();
global.success = false;

var gstart = instance_create_layer(1400, 352, "instances", obj_start);
gstart.image_xscale = 7;
gstart.image_yscale = 7;
gstart.image_angle = -90;

var gend = instance_create_layer(520, 864, "instances", obj_end);
gend.image_xscale = 7;
gend.image_yscale = 7;
gend.image_angle = -90;

pipe1 = instance_create_layer(704, 352, "instances", obj_pipe);
pipe1.sprite_index = spr_pipe3;
pipe1.image_xscale = 4;
pipe1.image_yscale = 4;
pipe1.rot = 0;
/*with(pipe1){
    if(mouse_check_button_pressed(mb_left)){
    if(pipe1.rot == 3) pipe1.rot = 0; 
    else pipe1.rot++;
    
    image_angle += 90;
}
} */

pipe2 = instance_create_layer(960, 352, "Instances", obj_pipe);
pipe2.sprite_index = spr_pipe2;
pipe2.image_xscale = 4;
pipe2.image_yscale = 4;
pipe2.rot = 0;
/*with(pipe2){
    if(mouse_check_button_pressed(mb_left)){
    if(pipe2.rot == 3) pipe2.rot = 0; 
    else pipe2.rot++;
    
    image_angle += 90;
}
} */

pipe3 = instance_create_layer(1216, 352, "Instances", obj_pipe);
pipe3.sprite_index = spr_pipe1;
pipe3.image_xscale = 4;
pipe3.image_yscale = 4;
pipe3.rot = 0;
/*with(pipe3){
    if(mouse_check_button_pressed(mb_left)){
    if(pipe3.rot == 3) pipe3.rot = 0; 
    else pipe3.rot++;
    
    image_angle += 90;
}
} */

pipe4 = instance_create_layer(704, 608, "Instances", obj_pipe);
pipe4.sprite_index = spr_pipe2;
pipe4.image_xscale = 4;
pipe4.image_yscale = 4;
pipe4.rot = 0;
/*with(pipe4){
    if(mouse_check_button_pressed(mb_left)){
    if(pipe4.rot == 3) pipe4.rot = 0; 
    else pipe4.rot++;
    
    image_angle += 90;
}
} */

pipe5 = instance_create_layer(960, 608, "Instances", obj_pipe);
pipe5.sprite_index = spr_pipe3;
pipe5.image_xscale = 4;
pipe5.image_yscale = 4;
pipe5.rot = 0;
/*with(pipe5){
    if(mouse_check_button_pressed(mb_left)){
    if(pipe5.rot == 3) pipe5.rot = 0; 
    else pipe5.rot++;
    
    image_angle += 90;
}
} */

pipe7 = instance_create_layer(704, 864, "Instances", obj_pipe);
pipe7.sprite_index = spr_pipe3;
pipe7.image_xscale = 4;
pipe7.image_yscale = 4;
pipe7.rot = 0;
/*with(pipe7){
    if(mouse_check_button_pressed(mb_left)){
    if(pipe7.rot == 3) pipe7.rot = 0; 
    else pipe7.rot++;
    
    image_angle += 90;
}
} */


//instance_create_layer(1400, 352, "Instances", obj_start);
//instance_create_layer(520, 864, "Instances", obj_end);