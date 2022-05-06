if (ossafe_file_exists("config.ini"))
{
    ossafe_ini_open("config.ini")
        global.debug = ini_read_real("General", "debug", false)
    ossafe_ini_close()
}
else
    global.debug = false

global.debuginfos = false
global.debug_god_mode = false

// Create our obj_roomselector here so we don't clutter PLACE_INITIALIZED
instance_create(x, y obj_roomselector)

debug_keycombo = keyboard_check(vk_shift) && keyboard_check(vk_control)
writedisplay = false
alarm[0] = 300
showdebug = false
cutsceneshow = false
conshower = false
collshower = false
maskshower = false
nameshower = false
caterpillarshower = false
interactshower = false
depth = -9999

// Set our version to -DEV
global.version += "-DEV"