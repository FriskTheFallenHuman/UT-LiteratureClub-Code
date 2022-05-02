obj_screen.messed = 0
global.inbattle = 1
savetimer = 0
loadtimer = 0
darkmode = 0
darkvalue = 0
htest = 0
save_hp = 50
save_inv = 0
megadamage = 0
global.faceemotion = 0
introcon = 1
introskip = 0
turnturn = 0
drawhp = 0
intent_hit = 0
global.floweyhp = 9950
global.floweymaxhp = 9999
global.battlephase = 0
global.soul_rescue = 0
if (global.fplot == 0)
{
    ossafe_ini_open("undertale.ini")
    ini_write_real(("FFFFF" + string(global.filechoice)), "P", 1)
    ossafe_ini_close()
    ossafe_savedata_save()
}
if (global.fplot > 1)
{
    global.battlephase = (global.fplot - 1)
    global.soul_rescue = (global.fplot - 1)
    introskip = 1
    fadevalue = 0
    with (obj_floweyx_tv)
        tvmode = 26
}
flx = 0
fly = 0
tv = instance_create(235, -32, obj_floweyx_tv)
lefteye = instance_create(196, 132, obj_floweyx_lefteye)
flipeye = instance_create(258, 192, obj_floweyx_flipeye)
mouth = instance_create(292, 196, obj_floweyx_mouth)
fleshface = instance_create(260, 126, obj_fleshface)
pipetest = instance_create(272, 226, obj_floweypipetest)
pipetest2 = instance_create(230, 132, obj_floweypipetest_2)
pipetest3 = instance_create(246, 54, obj_floweypipetest_3)
behind = instance_create(140, 10, obj_floweyx_behind)
obj_floweybodyparent.visible = false
sprite_collision_mask(spr_floweynuke, false, 2, 13, 44, 34, 100, 1, 0)
mus_soul[0] = caster_load("music/f_6s_1.ogg")
mus_soul[1] = caster_load("music/f_6s_2.ogg")
mus_soul[2] = caster_load("music/f_6s_3.ogg")
mus_soul[3] = caster_load("music/f_6s_4.ogg")
mus_soul[4] = caster_load("music/f_6s_5.ogg")
mus_soul[5] = caster_load("music/f_6s_6.ogg")
mus_soul[6] = caster_load("music/f_6s_1.ogg")
soulpitch = 1
mus_noise = caster_load("music/f_noise.ogg")
mus_alarm = caster_load("music/f_alarm.ogg")
mus_phase[0] = caster_load("music/f_part1.ogg")
mus_phase[1] = caster_load("music/f_part2.ogg")
mus_repeat1 = caster_load("music/repeat_1.ogg")
mus_repeat2 = caster_load("music/repeat_2.ogg")
mus_endnote = caster_load("music/f_endnote.ogg")
mustype = 0
sfx_oh = caster_load("music/sfx_oh.ogg")
sfx_ted = caster_load("music/sfx_ted.ogg")
sfx_generate = caster_load("music/sfx_generate.ogg")
sfx_laugh = caster_load("music/f_laugh.ogg")
mus_finale1 = caster_load("music/f_finale_1.ogg")
mus_finale1_l = caster_load("music/f_finale_1_l.ogg")
mus_finale2 = caster_load("music/f_finale_2.ogg")
mus_finale3 = caster_load("music/f_finale_3.ogg")
mus_saved = caster_load("music/f_saved.ogg")
mus_hit = caster_load("music/f_orchhit.ogg")
pd = 0
doomtimer = 0
o_kill = 0
destroyer = 0
destroyercon = 0
dcon = 0
fileset = 2
if (global.language == "ja")
    writerx = 135
else
    writerx = 170
