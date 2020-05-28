x += hSpeed/25;
y += vSpeed/25;
//var _oldSprite = sprite_index;
sprite_index = spriteDrown;
//if(_oldSprite != sprite_index) localFrame = 0;
EntityAnimateSprite();
depth += -1;
counter += 1;
if(counter >= 150) state = PlayerStateDeath;


