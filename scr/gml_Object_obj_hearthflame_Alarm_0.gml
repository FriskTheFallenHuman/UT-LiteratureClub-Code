if global.charswap
    var char_name = ("_" + string(global.charswappedname))
else
    char_name = ""
myinteract = 3
global.msc = 0
global.msg[0] = scr_gettext(("obj_hearthflame_57" + string(char_name)))
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
