buttonPressed++

var _contents = {
		cmd: "LocationChecks",
		locations: [int64(81000+buttonPressed)]	
	}
var arr = [_contents]

aa = json_stringify(arr)

var buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer,buffer_text,aa)

network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)
