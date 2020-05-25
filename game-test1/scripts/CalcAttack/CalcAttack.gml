//Use attack hitbox & check for hits
mask_index = argument0;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,abstractEntity,hitByAttackNow,true);
if (hits > 0){
	for(var i = 0; i < hits; i++){
		//if this instance has not yet been hit by this attack, hit it
		var hitID= hitByAttackNow[| i]; //ds_list_find_value(hitByAttackNow,i);
		if(ds_list_find_index(hitByAttack, hitID) == -1){
			ds_list_add(hitByAttack, hitID);
			with(hitID){
				//image_blend = c_red;
				if(entityHitScript!=-1) script_execute(entityHitScript);
				
				
				

			}
		}
	}
}

ds_list_destroy(hitByAttackNow);


mask_index = sPlayer;