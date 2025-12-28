function  InitializeGame(){
  randomize();
    numbers = [];
    for (var i = 0; i < 4; i++) {
        numbers[i] = irandom_range(0,9);
    }
    show_index = 0;
    show_timer = 0;
    state = "show";
    input_string = "";
    global.success = false;  
}

InitializeGame();