alarm[0] = room_speed * 5

xPos -= 4
x = xPos

if xPos <= -1750 {
	draw_text_reset()
instance_destroy()
global.lastItemSent = 0
global.lastPlayerSent = 0
	
}