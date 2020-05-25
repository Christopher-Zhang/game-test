/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude
/// @arg Frames (length of shake)

with(global.iCamera){
	if(argument0 > shakeRemain){
		shakeMagnitude = argument0;
		shakeRemain = shakeMagnitude;
		shakeLength = argument1;
	}
}