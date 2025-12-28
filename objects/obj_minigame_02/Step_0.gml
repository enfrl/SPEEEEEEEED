if (!instance_exists(pipe1)) exit;
if (instance_exists(pipe1) && instance_exists(pipe2) && instance_exists(pipe3) &&
    instance_exists(pipe4) && instance_exists(pipe5) && instance_exists(pipe7)) {
    
    if (pipe1.rot == 0 && pipe2.rot == 0 && 
        (pipe3.rot == 1 || pipe3.rot == 3) && 
        pipe4.rot == 1 && pipe5.rot == 2 && pipe7.rot == 2) {
        
        global.success = true;
    }
}