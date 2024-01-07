function renderSpellRadiusArea(spellName, castSecondsTime, spellRadius, eventKey) {
	var objArea = instance_create_layer(mouse_x, mouse_y, "Instances", obj_skill2_indicator, {
		spellName: spellName,
		castSecondsTime,
		radius: spellRadius,
		eventKey: eventKey,
	});
}

function castSpell(spellName, castSecondsTime, target_x, target_y, radius) {
	instance_create_layer(target_x, target_y, "Instances", spellName, {
		damage: irandom_range(10, 20),
		castSecondsTime: castSecondsTime
	});
}

