global.hp = 0
if (global.battlegroup == 22)
    obj_torielboss.sprite_index = spr_torielboss_mouthcover
if instance_exists(obj_asgoreb)
{
    ossafe_ini_open("undertale.ini")
    ky = ini_read_real(("Asgore" + string(global.filechoice)), "KillYou", 0)
    ini_write_real(("Asgore" + string(global.filechoice)), "KillYou", (ky + 1))
    ossafe_ini_close()
    ossafe_savedata_save()
}
if instance_exists(obj_spiderb)
    global.tempvalue[11] += 1
ossafe_ini_open("undertale.ini")
g_o = ini_read_real(("General" + string(global.filechoice)), "Gameover", 0)
ossafe_ini_close()
audio_stop_all()
caster_stop(-3)
caster_free(-3)
if instance_exists(obj_heart)
{
    global.myxb = obj_heart.x
    global.myyb = obj_heart.y
}
if instance_exists(obj_fakeheart)
{
    global.myxb = obj_fakeheart.x
    global.myyb = obj_fakeheart.y
}
room_goto(PLACE_FAILURE)
