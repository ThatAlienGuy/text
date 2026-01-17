if player = 1
{
	key_left = keyboard_check(vk_left)
	key_right = keyboard_check(vk_right)
	key_jump = keyboard_check_pressed(vk_up)
}
else
{
	key_left = keyboard_check(ord("A"))
	key_right = keyboard_check(ord("D"))
	key_jump = keyboard_check_pressed(ord("W"))
}

var move = key_right - key_left


hsp = wlk_spd * move 

if (place_meeting(x+hsp,y,obj_wall)) or (place_meeting(x+hsp,y,otherplayer))
{
	 while ((!place_meeting(x+sign(hsp),y,obj_wall)) and (!place_meeting(x+sign(hsp),y,otherplayer)))
	 {
		  	  x += sign(hsp);
	 }
 hsp = 0;
}

x += hsp

vsp += grv

if (place_meeting(x,y+vsp,obj_wall)) or (place_meeting(x,y+vsp,otherplayer))
{
	 while ((!place_meeting(x,y+sign(vsp),obj_wall)) and (!place_meeting(x,y+sign(vsp),otherplayer)))
	 {
		  	  y += sign(vsp);
	 }
 vsp = 0;
}



if (key_jump) and (place_meeting(x,y+1,obj_wall) or (place_meeting(x,y+1,otherplayer))) and !(place_meeting(x,y-jump,obj_wall) or (place_meeting(x,y-jump,otherplayer))) vsp = -jump


y += vsp


if y >= room_height{
	alive = false
}

if !alive and !place_meeting(sx,sy,otherplayer){
	x = sx
	y = sy
	alive = true
}else{
	if !alive and place_meeting(sx,sy,otherplayer) {
		otherplayer.alive = false
		x = sx
		y = sy
		alive = true
	}
}
