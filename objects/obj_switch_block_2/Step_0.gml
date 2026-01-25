image_index = obj_switch.image_index

if image_index = 1 hard = true else hard = false

if hard and place_meeting(x,y,obj_player_par)
{
	var player = instance_place(x,y,obj_player_par)
	if instance_exists(player) {
		with player{
			alive = false
		}
	}
}