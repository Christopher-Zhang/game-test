/// @description Init and Global
// RNG
randomize();

//globals
global.gamePaused = false;
global.textSpeed = .5;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.followCam = true;
global.restart = false;
//global.hasWater = false;
//something
surface_resize(application_surface, RESOLUTION_W,RESOLUTION_H);
room_goto(ROOM_START);