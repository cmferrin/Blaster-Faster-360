//makes the image fade/become transparent
if image_alpha > 0{
	image_alpha -= fade_speed;
} else {
	//destroys the explosion particle if it isn't visible
	instance_destroy();
}