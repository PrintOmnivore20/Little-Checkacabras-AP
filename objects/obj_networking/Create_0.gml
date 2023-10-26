var APgame = "ChecksFinder"
var slotName = "checksfinder"
var server = "archipelago.gg"
var port = 62399


var _contents = {
		cmd: "Connect",
		password: "",
		game: APgame,
		name: slotName,
		uuid: int64(999999),
		tags: [],
		version : {
			build : int64(3),
			class: "Version",
			minor: int64(4),
			major: int64(0)
	}
}

var arr = [ _contents]
/*var connect_map = ds_map_create()
var version_map = ds_map_create()
ds_map_add(version_map, "major", int64(0))
ds_map_add(version_map, "minor", int64(4))
ds_map_add(version_map, "build", int64(3))
ds_map_add(version_map, "class", "Version")
ds_map_add(connect_map, "cmd", "Connect")
ds_map_add(connect_map, "password", "")
ds_map_add(connect_map, "game", APgame)
ds_map_add(connect_map, "name", slotName)
ds_map_add(connect_map, "uuid", int64(999999))
ds_map_add_map(connect_map, "version", version_map)
ds_map_add(connect_map, "items_handling", int64(3))
ds_map_add(connect_map, "tags", [])
*/
aa = json_stringify(arr, true)
Socket = network_create_socket(network_socket_wss)
isConnected = network_connect_raw(Socket, server, port)
var buffer = buffer_create(string_byte_length(arr), buffer_fixed,1)
buffer_write(buffer,buffer_string,arr)
network_send_raw(Socket, buffer, buffer_get_size(buffer),1)

ap_show_debug_message("json string: " + string(aa))
ap_show_debug_message("buffer size: " + string(buffer_get_size(buffer)))
ap_show_debug_message("buffer output: " + string(buffer))