var player = instance_place(x,y,obj_player_par)
if instance_exists(player){
	player.coins++
	instance_destroy()
}