global.interact = 3
if (touched == false)
{
    caster_free(-3)
    cym = caster_load("music/cymbal.ogg")
    caster_play(cym, 0.9, 0.95)
    instance_create(0, 0, obj_whitefader)
    alarm[2] = 180
    touched = true
    global.plot = 30
    global.phone[0] = 0
    global.phone[1] = 0
    global.phone[2] = 0
    global.phone[3] = 0
    global.phone[4] = 0
    global.phone[5] = 0
    global.phone[6] = 0
    global.phone[7] = 0
    global.phone[0] = 206
    scr_tempsave()
}
