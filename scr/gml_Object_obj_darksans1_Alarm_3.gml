if (shakehand == 2)
{
    image_index = 2
    conversation = 4
}
if (shakehand == 1)
{
    image_index = 1
    shakehand += 1
    alarm[3] = 60
}
if (shakehand == 0)
{
    image_blend = c_white
    with (obj_char)
    {
        other.sprite_index = sansprankpsrite
        visible = false
        other.image_index = 0
    }
    fsound = caster_load("music/whoopee.ogg")
    rshot = caster_load("music/rimshot.ogg")
    global.currentsong = caster_load("music/muscle.ogg")
    global.currentsong2 = caster_load("music/papyrus.ogg")
    shakehand = 2
    alarm[3] = 90
}
