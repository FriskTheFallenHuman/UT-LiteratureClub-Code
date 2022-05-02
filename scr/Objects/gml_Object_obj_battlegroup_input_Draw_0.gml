if (view_current != 0)
    return;
draw_set_alpha(1)
if (keyboard_check_pressed(vk_return) || keyboard_check_pressed(vk_home))
{
    if (global.battlegroup == 0)
    {
        global.interact = 0
        instance_destroy()
        return;
    }
    if (global.battlegroup == 47)
    {
        global.flag[16] = 1
        global.flag[99] = 0
        global.border = 12
    }
    else
    {
        global.flag[16] = 0
        global.border = 0
    }
    instance_create(0, 0, obj_battler)
}
if instance_exists(obj_battler)
{
    instance_destroy()
    return;
}
x = (__view_get(0, 0) + 4)
y = ((__view_get(1, 0) + __view_get(3, 0)) - 4)
if (keyboard_check_pressed(vk_backspace) && digits > 0)
{
    battlegroup /= 10
    battlegroup = floor(battlegroup)
    digits--
}
var i = 0
while (i < 10 && digits < 3)
{
    if keyboard_check_pressed((ord("0") + i))
    {
        battlegroup *= 10
        battlegroup += i
        digits++
    }
    i++
}
str = string(floor(battlegroup))
draw_set_color(c_white)
draw_set_font(fnt_maintext)
draw_rectangle(x, y, (x + 30), (y + 1), false)
draw_rectangle(x, ((y - string_height(str)) - 4), x, (y + 1), false)
draw_set_color(c_lime)
draw_text((x + 4), ((y - string_height(str)) - 4), str)
global.battlegroup = battlegroup
