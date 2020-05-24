/// @description Update Camera

//update dest
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo-x)/15;
y += (yTo-y)/15;

//Keep camera center inside room
x = clamp(x,viewWidthHalf, room_width-viewWidthHalf);
y = clamp(x,viewHeightHalf, room_height-viewHeightHalf);

//todo screenshake?? part 6 12:40