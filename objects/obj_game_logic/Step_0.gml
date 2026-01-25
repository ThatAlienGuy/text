if !instance_exists(obj_player_1) and !instance_exists(obj_player_2)
{
	done = true
}

if done 
{
	room_goto_next()
}