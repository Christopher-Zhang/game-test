/// @description Animation?

var _oldSprite = sprite_index;
if(isDie){
	sprite_index = boxBreak;
	EntityAnimateSprite();
	if(animationEnd) instance_destroy();
}
if(_oldSprite!=sprite_index) localFrame = 0;


depth = -y;