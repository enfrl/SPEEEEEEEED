randomize();
num_sequence = [
    irandom_range(0,3),
    irandom_range(0,3),
    irandom_range(0,3),
    irandom_range(0,3)
];

arrow_instances = [];

arrow_instances[0] = instance_create_layer(313, 386, "Instances", obj_rune_arrow);
arrow_instances[0].sprite_index = SpriteDecision(num_sequence[0]);
SpriteSize(arrow_instances[0]);

arrow_instances[1] = instance_create_layer(665, 386, "Instances", obj_rune_arrow);
arrow_instances[1].sprite_index = SpriteDecision(num_sequence[1]);
SpriteSize(arrow_instances[1]);

arrow_instances[2] = instance_create_layer(1017, 386, "Instances", obj_rune_arrow);
arrow_instances[2].sprite_index = SpriteDecision(num_sequence[2]);
SpriteSize(arrow_instances[2]);

arrow_instances[3] = instance_create_layer(1369, 386, "Instances", obj_rune_arrow);
arrow_instances[3].sprite_index = SpriteDecision(num_sequence[3]);
SpriteSize(arrow_instances[3]);

function SpriteDecision(num){
    switch (num) {
    	case 0:
            return spr_rune_down;
        
        case 1:
            return spr_rune_left;
        
        case 2:
            return spr_rune_right;
        
        case 3:
            return spr_rune_up;
    }
}

function SpriteSize(spr){
    spr.image_xscale = 7;
    spr.image_yscale = 7;
}

hasInput = false;
taskIndex = 0;
curTask = num_sequence[taskIndex];
global.success = false;