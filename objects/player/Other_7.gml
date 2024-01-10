if (sprite_index == player_death) {
	 instance_destroy();
}

if (sprite_index == player_attack_sprite) {
	 createDamageObj(25);
	 state = CharacterState.Stay;
}


