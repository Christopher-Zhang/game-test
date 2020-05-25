/// @desc draws healthbar above target entity
/// @arg x1
/// @arg y1
/// @arg length
/// @arg height
/// @arg totalHP

x1 = argument0;
y1 = argument1;
x2 = x1 + argument2;
y2 = y1 + argument3;

DrawBar(sHealthbar,1,x1,y1,x2,y2);