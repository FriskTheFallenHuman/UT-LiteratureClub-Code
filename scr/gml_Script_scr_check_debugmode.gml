ossafe_ini_open("config.ini")
global.debug = ini_read_real("General", "debug", 0)
ossafe_ini_close()
