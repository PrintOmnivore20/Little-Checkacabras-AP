function ap_show_debug_message(log){
global.logfile = file_text_open_append((working_directory + "/temp1.txt"))
file_text_write_string(global.logfile, argument0)
file_text_writeln(global.logfile)
file_text_close(global.logfile)
}