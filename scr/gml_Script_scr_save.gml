scr_saveprocess(global.filechoice)
filechoicebk2 = global.filechoice
global.filechoice = 9
scr_saveprocess(9)
global.filechoice = filechoicebk2
iniwrite = ossafe_ini_open("undertale.ini")
ini_write_string(("General" + string(global.filechoice)), "Name", global.charname)
ini_write_real(("General" + string(global.filechoice)), "Love", global.lv)
ini_write_real(("General" + string(global.filechoice)), "Time", obj_time.time)
ini_write_real(("General" + string(global.filechoice)), "Kills", global.kills)
ini_write_real(("General" + string(global.filechoice)), "Room", room)
ossafe_ini_close()
ossafe_savedata_save()
