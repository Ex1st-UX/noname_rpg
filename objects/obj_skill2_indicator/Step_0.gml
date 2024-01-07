x = mouse_x;
y = mouse_y;

if (keyboard_check(ord(eventKey)) && eventKeyCount >= 1) {
	eventKeyCount += 1;
	instance_destroy();
}