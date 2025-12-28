draw_set_color(c_red);
draw_set_font(DungGeunMo_Smol);

with(InGameStartManager){
    if(game_start == true){
        switch (global.current_state) {
    case STATE.FIRST:
        draw_text(1600, 864, "키보드: 타이핑" + "\n" + "ENTER: 확인");
    break;
    
    case STATE.SECOND:
        draw_text(1600, 864, "방향키: 칸 이동" + "\n" + "NumPad: 숫자 입력");
    break; 
            
    case STATE.THIRD:
        draw_text(1600, 864, "클릭: 회전");  
        break;        
            
    case STATE.FOURTH:
         draw_text(1600, 864, "키보드: 입력");
         break;
            
    case STATE.FIFTH:
        draw_text(1600, 864, "클릭");
        break;
    
    case STATE.SIXTH:
        draw_text(1600, 864, "SPACE: 입력");
        break;        
            
    case STATE.SEVENTH:
        draw_text(1600, 864, "화살표: 입력");
        break;
            
    case STATE.EIGHTH:
        draw_text(1600, 864, "NumPad: 입력");
        break;
            
    case STATE.NINETH:
        draw_text(1600, 864, "Z: -90도 회전" + "\n" + "X: 90도 회전"); 
        break;  
            
    case STATE.TENTH:
        draw_text(1600,864,"방향키: 이동");
        break;    
            
    case STATE.ELEVENTH:
        draw_text(1600, 864, "방향키: 회전" + "\n" + "Z: 발사");
        break;    
    
    case STATE.TWELVETH:
        draw_text(1600, 864, "SPACE: 연타!!");
        break;               
  }
        
        
      
    }
}