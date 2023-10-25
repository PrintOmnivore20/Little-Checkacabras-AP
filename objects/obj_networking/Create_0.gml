var game = "ChecksFinder"
var slotName = "checksfinder"
var server = "archipelago.gg"
var port = 62399

var connect_map = ds_map_create()
var version_map = ds_map_create()
ds_map_add(version_map, "major", (0 << 0))
ds_map_add(version_map, "minor", (4 << 0))
ds_map_add(version_map, "build", (3 << 0))
ds_map_add(version_map, "class", "Version")
ds_map_add(connect_map, "cmd", "Connect")
ds_map_add(connect_map, "password", "")
ds_map_add(connect_map, "game", game)
ds_map_add(connect_map, "name", slotName)
ds_map_add(connect_map, "uuid", (999999 << 0))
ds_map_add_map(connect_map, "version", version_map)
ds_map_add(connect_map, "items_handling", (3 << 0))
ds_map_add(connect_map, "tags", [])
aa = json_encode(connect_map)
Socket = network_create_socket(network_socket_wss)
isConnected = network_connect_raw(Socket, server, port)
buff = buffer_create(1024, buffer_grow, 1)
buffer_seek(buff, buffer_seek_start, 0)
buffer_write(buff, buffer_text, aa)
network_send_raw(Socket, buff, buffer_get_size(buff),0)

ap_show_debug_message(buff)
ap_show_debug_message("json string: " + string(aa))
ap_show_debug_message("buffer output: " + string(buff))
