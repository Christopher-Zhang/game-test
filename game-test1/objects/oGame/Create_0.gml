/// @description Init and Global
// RNG
randomize();

//globals
global.gamePaused = false;
global.textSpeed = .5;
global.iCamera = instance_create_layer(0,0,layer,oCamera);

//something
surface_resize(application_surface, RESOLUTION_W,RESOLUTION_H);
room_goto(ROOM_START);