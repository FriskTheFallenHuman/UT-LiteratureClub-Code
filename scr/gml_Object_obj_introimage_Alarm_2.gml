visible = true
with (instance_create(0, 0, obj_introfader))
{
    phase = 2
    alpha = 0
    tspeed *= 2
    start = 1
}
caster_play(intromusic, 1, 0.91)
global.typer = 11
global.faceemotion = 0
global.facechoice = 0
global.msc = 0
global.msg[0] = scr_gettext("obj_introimage_70")
global.msg[1] = scr_gettext("obj_introimage_71")
global.msg[2] = scr_gettext("obj_introimage_72")
global.msg[3] = scr_gettext("obj_introimage_73")
global.msg[4] = scr_gettext("obj_introimage_74")
global.msg[5] = scr_gettext("obj_introimage_75")
global.msg[6] = scr_gettext("obj_introimage_76")
global.msg[7] = scr_gettext("obj_introimage_78")
global.msg[8] = scr_gettext("obj_introimage_79")
global.msg[9] = scr_gettext("obj_introimage_80")
global.msg[10] = scr_gettext("obj_introimage_81")
global.msg[11] = scr_gettext("obj_introimage_82")
global.msg[12] = scr_gettext("obj_introimage_83")
global.msg[13] = scr_gettext("obj_introimage_84")
global.msg[14] = scr_gettext("obj_introimage_85")
storywriter = instance_create(40, 140, OBJ_WRITER)
alarm[0] = 5