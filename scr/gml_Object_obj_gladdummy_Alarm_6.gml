blcon = instance_create((x + sprite_width), y, obj_blconsm)
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 100)
    global.msg[0] = scr_gettext("obj_gladdummy_216")
t += 1
if (t == 1)
    global.msg[0] = scr_gettext("obj_gladdummy_218")
if (t == 2)
    global.msg[0] = scr_gettext("obj_gladdummy_219")
if (t == 3)
    global.msg[0] = scr_gettext("obj_gladdummy_220")
if (t == 4)
    global.msg[0] = scr_gettext("obj_gladdummy_221")
if (t == 5)
    global.msg[0] = scr_gettext("obj_gladdummy_222")
if (t >= 6)
    global.msg[0] = scr_gettext("obj_gladdummy_223")
global.msg[1] = scr_gettext("obj_gladdummy_232")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)