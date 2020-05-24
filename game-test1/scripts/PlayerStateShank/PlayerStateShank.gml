



//Update Sprite Index
var _oldSprite = sprite_index;



//if(_oldSprite != sprite_index){
if(sprite_index != sPlayerShank){
	sprite_index = spriteShank;
	localFrame = 0;
	//image_index = 0;
	
	if(!ds_exists(hitByAttack, ds_type_list)){
		hitByAttack = ds_list_create();
	}
	ds_list_clear(hitByAttack);
}

CalcAttack(sPlayerShankBox);
//Update image index
PlayerAnimateSprite();
if(animationEnd){
	state = PlayerStateFree;
	animationEnd = false;
}