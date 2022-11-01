if (keyboard_check_pressed(vk_right) && place_free(x+1,y))
{
	image_angle = 0;

	direction = 0;

	hspeed = speed;
}

if (keyboard_check_pressed(vk_up) && place_free(x,y-1))
{
	image_angle = 90;

	direction = 90;

	vspeed = -speed;
}

if (keyboard_check_pressed(vk_left) && place_free(x-1,y))
{
	image_angle = 180;

	direction = 180;

	hspeed = -speed;
}

if (keyboard_check_pressed(vk_down) && place_free(x,y+1))
{
	image_angle = 270;

	direction = 270;

	vspeed = speed;
}