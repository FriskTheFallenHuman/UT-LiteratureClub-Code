if global.charswap
    var char_name = ("_" + string(global.charswappedname))
else
    char_name = ""
myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext(("obj_cheesetable1_58" + string(char_name)))
global.msg[1] = scr_gettext(("obj_cheesetable1_59" + string(char_name)))
if (global.flag[7] == 1)
    global.msg[0] = scr_gettext(("obj_cheesetable1_62" + string(char_name)))
mydialoguer = instance_create(0, 0, obj_dialoguer)
