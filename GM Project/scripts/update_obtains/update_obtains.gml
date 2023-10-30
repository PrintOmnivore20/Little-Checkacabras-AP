function update_obtains(apItem, senderName){
	nameString = get_name(senderName)
	
	if apItem = int64(80002) {
		show_debug_message("You received a Map Grid from " + nameString)
		global.lastItemSent = string("Map Grid")
		audio_play_sound(snd_obtainalert,9,false)
	}
}