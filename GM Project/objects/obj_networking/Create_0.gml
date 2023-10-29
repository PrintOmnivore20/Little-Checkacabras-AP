var APgame = "ChecksFinder"
var slotName = "checksfinder"
var server = "archipelago.gg"
var port = 59245
wss = network_socket_wss
ws = network_socket_ws


if global.secure = true && global.socket != network_create_socket(wss) {
		global.socket = network_create_socket(wss)
}
if global.secure = false && global.socket != network_create_socket(ws) {
	global.socket = network_create_socket(ws)	
}


playerSent = 0

item = 0

var _contents = {
		cmd: "Connect",
		password: "",
		game: APgame,
		name: global.name,
		uuid: int64(999999),
		items_handling: int64(3),
		tags: [],
		version : {
			build : int64(3),
			class: "Version",
			minor: int64(4),
			major: int64(0)
	}
}

var arr = [ _contents]
aa = json_stringify(arr)

isConnected = network_connect_raw(global.socket, global.server, global.port)
buffer = buffer_create(string_byte_length(aa), buffer_fixed,1)
buffer_seek(buffer, buffer_seek_start, 0)
buffer_write(buffer,buffer_text,aa)

//ab = buffer_read(buffer, buffer_text)
//ap_show_debug_message("buffer output: " + ab)
network_send_raw(global.socket, buffer, buffer_tell(buffer),network_send_text)

ap_show_debug_message("json string: " + string(aa))
ap_show_debug_message("buffer size: " + string(buffer_get_size(buffer)))

