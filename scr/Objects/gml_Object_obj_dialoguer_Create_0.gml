count = 0
side = 1
global.facechange = 1
xx = global.toggle_widescreen ? (__view_get(0, view_current) + 75) : __view_get(0, view_current)
yy = __view_get(1, view_current)
var basey = 150

if (instance_exists(obj_mainchara) && obj_mainchara.y > (yy + 130))
{
    side = 0
    basey = -5
}

if (global.language == "ja" && global.facechoice == 4)
{
    writer = instance_create((xx + 10), (yy + basey), OBJ_WRITER)
    writer.writingxend = (writer.writingxend_base - 38)
}
else if (global.facechoice != 0)
    writer = instance_create((xx + 68), (yy + basey), OBJ_WRITER)
else
    writer = instance_create((xx + 10), (yy + basey), OBJ_WRITER)

if (global.facechoice != 0)
    scr_facechoice()

zurasu = 0
zurasucon = 0
writer.dialoguer = id
zurasucon = 1
cur_offs = 0