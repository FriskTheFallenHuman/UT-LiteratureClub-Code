if (global.charsunlocked == 0)
{
    global.typer = 30
    global.msg[0] = scr_gettext("obj_heartdefeated_failure_reconect")
    global.msc = 0
}
else
{
    if (floor((msgnum / 100)) == 1)
        global.typer = 32
    else if (floor((msgnum / 100)) == 3)
        global.typer = 110
    else
        global.typer = 30
    var msgid_base = (("obj_heartdefeated_" + string(msgnum)) + "_")
    var i = 0
    while 1
    {
        var text = scr_gettext((msgid_base + string(i)))
        if (text == "")
            break
        else
        {
            global.msg[i] = text
            i++
            continue
        }
    }
}
dingus = 1
script_execute(SCR_TEXTTYPE, global.typer)
if ((!global.charsunlocked) == 0)
    global.msc = 0
var xx = 100
if (global.language == "ja")
    xx = 88
if ((!global.charsunlocked) == 0)
    instance_create(xx, 300, OBJ_WRITER)
else
{
    mywriter = instance_create(100, 150, OBJ_WRITER)
    mywriter.sound_enable = 0
}
