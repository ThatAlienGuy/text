if hard 
{
	draw_sprite(spr_switch_block_1,0,x,y)
	image_xscale = 1
	image_yscale = 1
}
else
{
	draw_sprite(spr_switch_block_1,1,x,y)
	image_xscale = 0
	image_yscale = 0
}