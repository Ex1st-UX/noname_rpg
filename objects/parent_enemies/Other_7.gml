if (sprite_index == skeleton_sprite_death) {
	instance_destroy();
	instance_create_layer(x, y, "Instances", skeleton_obj, {});
}