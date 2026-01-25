var coins1 = 0
var coins2 = 0
if instance_exists(obj_player_1){
	var coins1 = obj_player_1.coins
}

if instance_exists(obj_player_2){
	coins2 = obj_player_2.coins
}

draw_set_color(c_red)
draw_text_transformed(0,0,"P1 Coins :" + string(coins1),3,3,0)

draw_set_color(c_blue)
draw_text_transformed(0,0+50,"P2 Coins :" + string(coins2),3,3,0)
