function startAutoAttack(delay) {
	delay = room_speed * delay;
	
	if (current_time >= delay)
	{
		sprite_index = player_attack_sprite; 
		instance_create_layer(x + 5, y, "Instances", damage_obj, {damageValue: 50});
		lastAttackTime = current_time;
		return lastAttackTime;
	}

}

function createDamageObj(damageValue) {
	instance_create_layer(x + 5, y, "Instances", damage_obj, {damageValue: damageValue});
}

function getObjectDeathSprite(object_index) {
	var originalSprite = object_get_sprite(object_index);
	return asset_get_index(sprite_get_name(originalSprite) + "_death");
}

