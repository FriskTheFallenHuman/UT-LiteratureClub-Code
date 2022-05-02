ossafe_ini_open("config.ini")
var hardmode = ini_read_real("General", "hardmode", global.debug)
ossafe_ini_close()
return hardmode;
