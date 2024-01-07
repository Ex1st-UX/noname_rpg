if (hp <= 0) {
	var originalSprite = object_get_sprite(object_index);
	deathSprite = asset_get_index(sprite_get_name(originalSprite) + "_death");
    sprite_index = deathSprite;
}

