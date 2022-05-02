if (ossafe_file_exists("config.ini"))
{
    ossafe_ini_open("config.ini")
        global.debug = ini_read_real("General", "debug", false)
    ossafe_ini_close()
}
else
    global.debug = false

global.debug_god_mode = false

writedisplay = false
alarm[0] = 300
showdebug = false
cutsceneshow = false
conshower = false
caterpillarshower = false
interactshower = false
depth = -9999