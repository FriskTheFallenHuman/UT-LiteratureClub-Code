if global.firstrun
{
    instance_create_depth(x, y, depth, obj_gameintro_glitched)
    instance_destroy()
    with (obj_introframe)
        instance_destroy()
    return;
}
intromusic = caster_load("music/story.ogg")
storywriter = -4
visible = false
image_speed = 0
image_alpha = 0
vol = 1
fadercreator = 0
skip = false
alarm[2] = 4
fadesign = 0
obj_introframe.image_alpha = 0
