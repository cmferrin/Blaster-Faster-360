//set the sprite to face the mouse
var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = _mouse_direction;

//makes the variable _thrust happen while the 
//right mouse button is being pushed
var _thrust = mouse_check_button(mb_right);
//thrust sprite only activates when pushing thrust button
image_index = _thrust;

if (_thrust){
	//makes the ship actually move/accelerate
	motion_add(image_angle, acceleration);
	
	//sets top speed so that the ship doesn't go too fast
	if (speed > max_speed){
		speed = max_speed;
	}
	var _offset = random_range(-4, 4);
	var _length = -14;
	var _x = x + lengthdir_x(_length, image_angle) + _offset;
	var _y = y + lengthdir_y(_length, image_angle) + _offset;
	instance_create_layer(_x, _y, "Effects", o_explosion_particle);
} else {
	//add friction for more realism
	friction = friction_amount;
}

