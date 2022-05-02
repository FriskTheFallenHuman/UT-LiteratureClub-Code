death = 0
if ossafe_file_exists("system_information_963")
    death = 1
type = 0
dogamt = 0
if (global.flag[512] == 1)
    type = 1
if (type == 0)
    noise = caster_load("music/intronoise.ogg")
song = caster_load("music/musicbox.ogg")
timer = 0
photo_alpha = 0
ossafe_ini_open("undertale.ini")
curf = ini_read_real(("EndF" + string(global.filechoice)), "EndF", 0)
if (curf == 0)
    ini_write_real(("EndF" + string(global.filechoice)), "EndF", 1)
ini_write_real(("General" + string(global.filechoice)), "CP", 1)
ossafe_ini_close()
if (curf == 0)
    ossafe_savedata_save()
