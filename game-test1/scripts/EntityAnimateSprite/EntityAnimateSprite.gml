/// @desc do the animate

var _totalFrames = sprite_get_number(sprite_index);
image_index = localFrame;
localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

//If animation loops on next game step
if(localFrame >= _totalFrames){
	animationEnd = true;
	localFrame -= _totalFrames;
}
else animationEnd = false;