		draw_set_font(fntMain)
	draw_set_color(c_black)
if instance_exists(obj_networking) {
draw_text(xPos+800,520,string("You received a " + global.lastItemSent + " from " + global.lastPlayerSent))

}