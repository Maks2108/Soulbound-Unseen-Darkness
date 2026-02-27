depth = 1
randomise()

if random(60) >= 59
{
	instance_create_layer(x,y,"Instances",obj_candle)
}
if random(30) >= 29
{
	instance_create_layer(x,y,"Instances",obj_cobweb)
}
if random(700) >= 699
{
	instance_create_layer(x,y,"Instances",obj_skeleton_elite)
}
if random(700) >= 695 && random(1000) < 699
{
	instance_create_layer(x,y,"Instances",obj_skeleton_archer)
}
if random(700) >= 685 && random(1000) < 695
{
	instance_create_layer(x,y,"Instances",obj_skeleton)
}
if random(500) >= 499
{
	instance_create_layer(x,y,"Instances",obj_chest)
}
if random(2000) >= 1999
{
	instance_create_layer(x,y,"Instances",obj_blue_key)
}