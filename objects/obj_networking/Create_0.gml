var game = "ChecksFinder"
var slotName = "checksfinder"
var server = "archipelago.gg"
var port = 62399

var connect_map = ds_map_create()
var version_map = ds_map_create()
ds_map_add(version_map, "major", floor(0))
ds_map_add(version_map, "minor", floor(4))
ds_map_add(version_map, "build", floor(3))
ds_map_add(version_map, "class", "Version")
ds_map_add(connect_map, "cmd", "Connect")
ds_map_add(connect_map, "password", "")
ds_map_add(connect_map, "game", game)
ds_map_add(connect_map, "name", slotName)
ds_map_add(connect_map, "uuid", floor(999999))
ds_map_add_map(connect_map, "version", version_map)
ds_map_add(connect_map, "items_handling", floor(3))
ds_map_add(connect_map, "tags", [])
aa = json_encode(connect_map)
Socket = network_create_socket(network_socket_wss)
isConnected = network_connect_raw(Socket, server, port)
var buffer = buffer_create(string_byte_length(connect_map), buffer_fixed,1)
buffer_write(buffer,buffer_text,connect_map)
network_send_raw(Socket, buffer, buffer_get_size(buffer),0)

ap_show_debug_message(buffer)
ap_show_debug_message("json string: " + string(aa))
ap_show_debug_message("buffer output: " + string(buffer))
