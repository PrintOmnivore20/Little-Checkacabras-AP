//show_debug_message(json_encode(async_load))

if(async_load[? "size"] > 0){
	var buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	var response = buffer_read(buff,buffer_string)
	ap_show_debug_message(response)
}
		buffer_seek(buff,buffer_seek_start,0)
	var data = json_parse(response)


for (var i = 0; i < array_length(data); ++i)
{
	if struct_exists(data[i], "cmd")
{
show_debug_message(data[i].cmd)

if (data[i].cmd = "ReceivedItems") {
	if struct_exists(data[i], "items") {
	for (var ii = 0; ii < array_length(data[i].items); ++ii) {
			show_debug_message(data[i].items[ii])
			if (data[i].items[ii].item = int64(80002)) {
						show_debug_message("You got an item!")
						playerSent = data[i].items[ii].player
						show_debug_message(playerSent)
			}
			
		}
	}
}
if (playerSent >= 0) {
if (data[i].cmd = "Connected") {
		if struct_exists(data[i], "players") {
		for (var iii = 0; iii <array_length(data[i].players); ++iii) {
			show_debug_message(data[i].players[iii])
				show_debug_message("Item was sent by " + string(data[i].players[iii].alias))	
			}
		}
		}
}

}
}


