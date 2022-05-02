myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_latchkey_71")
mydialoguer = instance_create(0, 0, obj_dialoguer)
if (room == room_kitchen_final)
    global.flag[452] = 1
if (room == room_asghouse3)
    global.flag[453] = 1
if (room == room_torielroom)
    global.flag[29] = 1
