//Movement

if(!keyRun){
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
}
else{
	hSpeed = lengthdir_x(inputMagnitude * speedRun, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedRun, inputDirection);	
}
/*
x += hSpeed;
y += vSpeed;
*/

//Player Movement

//Check collision
PlayerCollision();
WaterCollision();
PlayerMove();

//Update Sprite Index
var _oldSprite = sprite_index;
if(inputMagnitude!=0){
	direction = inputDirection;
	if(keyRun){
		sprite_index = spriteRun;
	}
	else sprite_index = spriteWalk;
}
else sprite_index = spriteIdle;

if(_oldSprite != sprite_index) localFrame = 0;

//Update image index
PlayerAnimateSprite();


if(keyShank){
	lastState = state;
	state = PlayerStateShank;
}

if(keyInteract){
	//1. If text box, do text box things
	//2. Check entity
	//3. If nothing, or something w/ no script, do nothing
	//4. Otherwise, activate script
	//5. If NPC, make it face towards

	var _activateX = lengthdir_x(10,direction);
	var _activateY = lengthdir_y(10,direction);
	activate = instance_position(x+_activateX, y+_activateY, abstractEntity);
	
	if((activate == noone) || activate.entityActivateScript == -1){
		
	}
	else if(lastState!=PlayerStateLocked){
		//Activate the entity
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		
		//entity face player
		if(activate.entityNPC){
			with(activate){
				direction = point_direction(x,y,other.x,other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
	
	
}