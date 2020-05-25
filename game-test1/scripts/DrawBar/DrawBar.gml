/// @desc Draw a stretched bar
/// @arg sprite
/// @arg width (width of the sprite)
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
x1 = argument2;
y1 = argument3;
x2 = argument4;
y2 = argument5;
width = argument1;
if(argument_count==5) {
	for(var i = 0; i <= x2; i = i + width){
		draw_sprite(argument0, -1, i,y1);
	}
}
else{
	y2 = argument5;
	for(var i = x1; i<=x2; i = i + width){
		for(var j = y1; j <= y2; j = j + width){
			draw_sprite(argument0, -1, i, j);
		}
	}
}
