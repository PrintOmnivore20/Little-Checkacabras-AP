show_debug_message(json_encode(async_load))

if(async_load[? "size"] > 0){
	var buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	var response = buffer_read(buff,buffer_string)
	//show_debug_message(response)
}



if(async_load[? "size"] > 0) {
	var data = json_parse(response)


 //Check if the struct has myArray variable

 //    Check if it's an array
    if is_array(data[0].item)
    {
        ap_show_debug_message(data[0].item);
    }

	

	
ap_show_debug_message(data[0].item)
}