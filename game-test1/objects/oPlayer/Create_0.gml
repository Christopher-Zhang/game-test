/// @description Main
// You can write your code in this editor

state = PlayerStateFree;


hitByAttack = -1;
lastState = state;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
totalHP = PLAYER_HP;
currentHP = totalHP;

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 0.5;
speedRun = 1.5;

spriteShank = sPlayerShank;
spriteRun = sPlayerRun;
spriteWalk = sPlayerWalk;
spriteIdle = sPlayer;
localFrame = 0;


