if(sprite_index = spriteDrown) localFrame = 0;
sprite_index = spriteDeath;
EntityAnimateSprite();
if(animationEnd){
	camera_destroy(view_camera[0]);
	room_goto(rMenuDeathScreen);
}