if global.charswap
    var char_name = ("_" + string(global.charswappedname))
else
    char_name = ""
myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_sockdrawer_60")
if (room == room_torielroom)
{
    global.msc = 524
    if (x > 192)
    {
        global.msc = 0
        global.msg[0] = scr_gettext(("obj_sockdrawer_66" + string(char_name)))
        global.msg[1] = scr_gettext(("obj_sockdrawer_67" + string(char_name)))
        if (read > 0)
            global.msg[0] = scr_gettext(("obj_sockdrawer_68" + string(char_name)))
    }
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
