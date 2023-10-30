function get_name(p_id){
if(async_load[? "size"] > 0){
	var buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	var response = buffer_read(buff,buffer_string)
}
		buffer_seek(buff,buffer_seek_start,0)
	var data = json_parse(response)

for (var i = 0; i < array_length(data); ++i)
{
	if struct_exists(data[i], "cmd")
if p_id != 0 {
	if (data[i].cmd = "Connected") {
		if struct_exists(data[i], "players") {
		for (var iii = 0; iii <array_length(data[i].players); ++iii) {
				//show_debug_message("Player: " + string(data[i].players[iii].alias))
				return string(data[i].players[iii].alias)
		}
		}
	}
}
}
}