function create_laser_effect(){
	var _laser_effect = instance_create_layer(x, y, "Effects", o_explosion_particle);
	_laser_effect.image_xscale = 1;
	_laser_effect.image_yscale = 1;
}