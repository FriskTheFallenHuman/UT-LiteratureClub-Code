c = 0
ossafe_ini_open("undertale.ini")
M1 = ini_read_real(("Papyrus" + string(global.filechoice)), "PK", 0)
ini_write_real(("Papyrus" + string(global.filechoice)), "PK", (M1 + 1))
ossafe_ini_close()
ossafe_savedata_save()
