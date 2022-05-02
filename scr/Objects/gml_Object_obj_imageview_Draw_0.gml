draw_sprite(sprite_index, image_index, __view_get(0, 0), __view_get(1, 0))
if (buffer == 1 && control_check_pressed(1) == 1)
    buffer = 2
if (buffer == 1 && control_check_pressed(0) == 1)
    buffer = 2
global.interact = 1
if (buffer == 2)
{
    global.interact = 0
    instance_destroy()
}
