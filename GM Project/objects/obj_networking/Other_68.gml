///@desc Buffer loading & Receiving Items

//Loads the buffers and lists them out into a variable (Probably not useful for the most part, just there at this point for assurance.)
if(async_load[? "size"] > 0){
	var buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	var response = buffer_read(buff,buffer_string)
}
		buffer_seek(buff,buffer_seek_start,0)
	var data = json_parse(response)

//Locks the data needed for the next functions into an array.
for (var i = 0; i < array_length(data); ++i)
{
	//Note: struct_exists() was added in v2023.8.x.xx, versions prior will need to be optimized to account for this.
	if struct_exists(data[i], "cmd")
{
//show_debug_message(data[i].cmd)

//Checks to see if the command part of the json is equal to the received items list, lists them out and throws them into a struct, allowing you to call them into update_obtains()
if (data[i].cmd = "ReceivedItems") {
	if struct_exists(data[i], "items") {
	for (var ii = 0; ii < array_length(data[i].items); ++ii) {
			//show_debug_message(data[i].items[ii])
			//Variable used for get_name(), if you want you can change it.
			playerSent = data[i].items[ii].player
			//show_debug_message(playerSent)
			if (playerSent >= 0) {
				update_obtains(data[i].items[ii].item, playerSent)
			}	
		}
	}
}


}
}


