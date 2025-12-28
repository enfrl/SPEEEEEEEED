// 1. 텍스트 가이드
draw_set_font(DungGeunMo_Smol);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(room_width/2, 180, "방향키로 조준하고 Z키로 과녁을 쏘세요!");

// 2. 플레이어 그리기 (조준 방향에 따라 회전시켜서 그리기 가능)
draw_sprite_ext(spr_player, 0, cx, cy, 1, 1, aim_dir, c_white, 1);

// 3. 4방향 과녁 그리기 (준비된 spr_target 사용)
if (targets[0]) draw_sprite(spr_target, 0, cx + dist, cy); // 3시
if (targets[1]) draw_sprite(spr_target, 0, cx, cy + dist); // 6시
if (targets[2]) draw_sprite(spr_target, 0, cx - dist, cy); // 9시
if (targets[3]) draw_sprite(spr_target, 0, cx, cy - dist); // 12시