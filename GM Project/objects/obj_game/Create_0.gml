global.socket = network_create_socket(network_socket_ws)
global.name = "checksfinder"
global.server = "archipelago.gg"
global.port = 59245
global.password = ""

global.alertbuttonActive = 0
global.chatbuttonActive = 0
global.listbuttonActive = 0

global.alertnotifActive = 0
global.chatnotifActive = 0

global.lastItemSent = 0

global.notifScrollActive = 0

global.secure = false


if global.server = "archipelago.gg" {
		global.secure = true
} else { global.secure = false }

