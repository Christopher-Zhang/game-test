/// @description Update Camera

//update dest
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;


//update object position
x = xTo;
y = yTo;

//Keep camera center inside room
// x = clamp(x,viewWidthHalf, room_width-viewWidthHalf);
// y = clamp(y,viewHeightHalf, room_height-viewHeightHalf);

//todo screenshake?? part 6 12:40
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);
}
if(!global.followCam) ResetView();