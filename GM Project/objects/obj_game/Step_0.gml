if global.lastItemSent != 0 {
	if !instance_exists(obj_textscroll) {
		instance_create_layer(x,y,layer,obj_textscroll)
	}
}