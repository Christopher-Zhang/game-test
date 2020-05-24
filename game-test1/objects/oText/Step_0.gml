/// @description text progress
lerpProgress += (1-lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1Tar,lerpProgress);
x2 = lerp(x2,x2Tar,lerpProgress);

if(keyboard_check_pressed(ord("F"))){
	var _messageLength = string_length(message);
	if(textProgress >= _messageLength){
		instance_destroy();
		if(instance_exists(oTextQueued)){
			with(oTextQueued) ticket--;
		}
		else{
			with(oPlayer) state=lastState;
		}
	}
	else{
		if(textProgress > 2){
			textProgress = _messageLength;
		}
	}
}