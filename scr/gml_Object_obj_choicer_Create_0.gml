alarm[1] = 3
image_blend = scr_char_files_soulindex(string(global.charsoulcolor))
canchoose = 0
add = __view_get(0, view_current)
x0 = (89 + add)
x1 = (185 + add)
x = x0
y = (210 + __view_get(1, view_current))
d = -1
if instance_exists(obj_dialoguer)
    d = obj_dialoguer.side
if (room != room_fire_operatest && instance_exists(obj_mainchara))
{
    if (obj_mainchara.y > (__view_get(1, view_current) + 130) || d == 0)
        y -= 155
}
mychoice = 0
global.choice = -1
choiced = false
