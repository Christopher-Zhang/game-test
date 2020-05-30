var _drown = false;
var if(tilemap_get_at_pixel(waterMap, x+hSpeed, y)){
	//x -= x mod TILE_SIZE;
	//if(sign(hSpeed) == 1) x += TILE_SIZE - 1;
	//hSpeed = 0;
	_drown = true;
}
if(tilemap_get_at_pixel(waterMap, x, y+vSpeed)){
	//y -= y mod TILE_SIZE;
	//if(sign(vSpeed)==1) y += TILE_SIZE - 1;
	//vSpeed=0;
	_drown = true;
}


if(_drown) state = PlayerStateDrown;