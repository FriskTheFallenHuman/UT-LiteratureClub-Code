alarm[4] = 150
con = 0
flowey = -1
alarm[5] = 60
fimg = 0
global.inbattle = 0
global.faceemotion = 0
ossafe_ini_open("undertale.ini")
chara = ini_read_string(("General" + string(global.filechoice)), "Name", "CHARA")
ossafe_ini_close()
scr_enable_screen_border(false)
