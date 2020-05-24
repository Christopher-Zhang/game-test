//Player Movement

//Check collision
PlayerCollision();

//Update Sprite Index
var _oldSprite = sprite_index;
if(inputMagnitude!=0){
	direction = inputDirection;
	if(keyRun) sprite_index = spriteRun;
	else sprite_index = spriteWalk;
}
else sprite_index = spriteIdle;

if(_oldSprite != sprite_index) localFrame = 0;

//Update image index
PlayerAnimateSprite();