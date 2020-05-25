/// @description Get Player Input

// You can write your code in this editor

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

keyShank = keyboard_check_pressed(vk_space);
keyInteract = keyboard_check_pressed(ord("F"));

keyRun = keyboard_check(vk_shift);

	

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft!=0) || (keyDown-keyUp!=0);

if(!global.gamePaused) script_execute(state);

depth = -y;

//DrawHealthbar(x-10,y-10,30,3);