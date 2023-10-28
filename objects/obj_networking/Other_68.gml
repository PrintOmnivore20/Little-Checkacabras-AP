//show_debug_message(json_encode(async_load))

if(async_load[? "size"] > 0){
	var buff = async_load[? "buffer"];
	buffer_seek(buff,buffer_seek_start,0);
	var response = buffer_read(buff,buffer_string)
	ap_show_debug_message(response)
}
		buffer_seek(buff,buffer_seek_start,0)
	var data = json_parse(response)

if(async_load[? "size"] > 0) {

if struct_exists(data[0], "item")
{
    // Check if it's a struct
    if is_struct(data[0].item)
    {
        // Print all struct members to the log
        var _names = struct_get_names(data[0]);
        var _str = "";
        for (var i = 0; i < array_length(_names); i++;)
        {
            _str = _names[i] + ": " + string(struct_get(data[0].item, _names[i]));
            show_debug_message(_str);
			ap_show_debug_message(_str)
        }
    }
}


 //Check if the struct has myArray variable

     //Check if it's an array
    //if is_array(data[0].item)
    //{

    //    ap_show_debug_message(data[0].item);
    //}

	

	
//ap_show_debug_message(data[0].item)
}

