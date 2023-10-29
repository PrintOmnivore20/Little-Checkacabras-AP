global.socket = network_create_socket(network_socket_ws)
global.name = "checksfinder"
global.server = "archipelago.gg"
global.port = 55444
global.password = ""

global.secure = false


if global.server = "archipelago.gg" {
		global.secure = true
} else { global.secure = false }

