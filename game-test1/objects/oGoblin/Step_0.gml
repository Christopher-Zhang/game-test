/// @description Damage & death?

if(currentHP <= 0) isDie = true;

if(isDie){
	sprite_index = goblinDie;
	EntityAnimateSprite();
	if(animationEnd) instance_destroy();
}
depth = -y;