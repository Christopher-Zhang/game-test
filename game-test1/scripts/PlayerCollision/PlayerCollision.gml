var _collision = false;
var _entityList = ds_list_create();

//horizontal tiles
if(tilemap_get_at_pixel(collisionMap, x+hSpeed, y)){
	x -= x mod TILE_SIZE;
	if(sign(hSpeed) == 1) x += TILE_SIZE - 1;
	hSpeed = 0;
	_collision = true;
}
//Horizontal entities
var _entityCount = instance_position_list(x + hSpeed, y, abstractEntity, _entityList,false);
//var _snapX;
var _current = _entityCount;
while(_entityCount > 0){
	var _entityCheck = _entityList[| 0];
	if(_entityCheck.entityCollision){
		//move as close as possible
		hSpeed *= 0.5;
		
		//if(hSpeed<0) _snapX = _entityCheck.bbox_right+1;
		//else _snapX = _entityCheck.bbox_left-1;
		//x = _snapX;
		//hSpeed = 0;
		
		
		_collision = true;
		//_entityCount = 0;
		//todo improve collision
	}
	_entityCount = instance_position_list(x + hSpeed, y, abstractEntity, _entityList,false);
	if(-0.01 <= hSpeed && hSpeed <= 0.01){
		hSpeed = 0;
		_entityCount--;
		ds_list_delete(_entityList,0);
	}
}



//Horizontal Move Commit
//x+= hSpeed;

//clear list between axes
ds_list_clear(_entityList);




//vertical tiles
if(tilemap_get_at_pixel(collisionMap, x, y+vSpeed)){
	y -= y mod TILE_SIZE;
	if(sign(vSpeed)==1) y += TILE_SIZE - 1;
	vSpeed=0;
	_collision = true;
}

var _entityCount = instance_position_list(x, y + vSpeed, abstractEntity, _entityList,false);
//var _snapX;
var _current = _entityCount;
while(_entityCount > 0){
	var _entityCheck = _entityList[| 0];
	if(_entityCheck.entityCollision){
		//move as close as possible
		vSpeed *= 0.5;
		
		//if(hSpeed<0) _snapX = _entityCheck.bbox_right+1;
		//else _snapX = _entityCheck.bbox_left-1;
		//x = _snapX;
		//hSpeed = 0;
		
		
		_collision = true;
		//_entityCount = 0;
		//todo improve collision
	}
	_entityCount = instance_position_list(x, y + vSpeed, abstractEntity, _entityList,false);
	if(-0.01 <= vSpeed && vSpeed <= 0.01){
		vSpeed = 0;
		_entityCount--;
		ds_list_delete(_entityList,0);
	}
}


//Vertical Move Commit
//y+=vSpeed;

ds_list_destroy(_entityList);

return _collision;