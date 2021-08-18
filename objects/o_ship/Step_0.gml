//set the sprite to face the mouse
var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = _mouse_direction;

var _thrust = mouse_check_button(mb_right);

if (_thrust){
	motion_add(image_angle, acceleration);
	if (speed > max_speed){
		speed = max_speed;
	}
} else {
	friction = 0.05;
}


direction = _mouse_direction;
