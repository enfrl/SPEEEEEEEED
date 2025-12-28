if(start_timer > 0) {start_timer--};
    
if(start_timer == 240) {countdown_letter = "4"};
if(start_timer == 180) {countdown_letter = "3"};
if(start_timer == 120) {countdown_letter = "2"};
if(start_timer == 60)  {countdown_letter = "1"};
if(start_timer == 0){
    countdown_letter = "START!";
    game_start = true;
    audio_play_sound(Agile_Accelerando, 10, false);
    alarm[0] = 60;
    //song duration 69sec
    alarm[1] = 4140;
    start_timer = -1;
}
