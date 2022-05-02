switch global.facing
{
    case 0:
        sprite_index = dsprite
        break
    case 1:
        sprite_index = rsprite
        break
    case 2:
        sprite_index = usprite
        break
    case 3:
        sprite_index = lsprite
        break
}

if (collision_point((bbox_left - 3), (bbox_top - 3), obj_solidparent, 0, 1) == -4)
    crumpet = 1
else
    crumpet = 2
strumpet = bbox_top
trumpet = bbox_left
if (global.inbattle == 1)
{
    if (global.flag[15] == 0)
    {
        instance_create(0, 0, obj_musfadein)
        caster_resume(global.currentsong)
    }
    room_persistent = false
    global.inbattle = 0
    if (global.specialbattle == 0)
        global.interact = 0
    depth = 100
    if (global.flag[200] != 0)
    {
        if (global.flag[201] != global.kills)
            global.flag[global.flag[200]] += (global.kills - global.flag[201])
    }
}
if (obj_time.run && disable_run == 0 && inwater == 0 && global.en > 3)
{
    is_running = 1
    movemultiplier = global.runspeed
    if (movement == 1)
    {
        run_index += (image_speed * movemultiplier)
        if (run_index > 5)
            run_index = 0
        global.en = max(0, (global.en - 1))
        if (global.facing == 0)
            sprite_index = dsprite_run
        if (global.facing == 1)
            sprite_index = rsprite_run
        if (global.facing == 2)
            sprite_index = usprite_run
        if (global.facing == 3)
            sprite_index = lsprite_run
        image_index = run_index
    }
}
else
{
    is_running = 0
    run_index = 0
    movemultiplier = 1
    if (global.en != 20)
        global.en += 0.1
}
if obj_time.left
{
    if (movement == 1)
    {
        turned = 1
        if (xprevious == (x + floor((3 * movemultiplier))))
            x -= floor((2 * movemultiplier))
        else
            x -= floor((3 * movemultiplier))
        if (moving != true && (!fun))
            image_index = 1
        moving = true
        if (!fun)
            image_speed = 0.2
        if (obj_time.up && global.facing == 2)
            turned = 0
        if (obj_time.down && global.facing == 0)
            turned = 0
        if (turned == 1)
            global.facing = 3
    }
}
if obj_time.up
{
    if (movement == 1)
    {
        turned = 1
        y -= floor((3 * movemultiplier))
        if (moving != true && (!fun))
            image_index = 1
        moving = true
        if (!fun)
            image_speed = 0.2
        if (obj_time.right && global.facing == 1)
            turned = 0
        if (obj_time.left && global.facing == 3)
            turned = 0
        if (turned == 1)
            global.facing = 2
    }
}
if obj_time.right
{
    if (movement == 1)
    {
        if (obj_time.left == 0)
        {
            turned = 1
            if (xprevious == (x - floor((3 * movemultiplier))))
                x += floor((2 * movemultiplier))
            else
                x += floor((3 * movemultiplier))
            if (moving != true && (!fun))
                image_index = 1
            moving = true
            if (!fun)
                image_speed = 0.2
            if (obj_time.up && global.facing == 2)
                turned = 0
            if (obj_time.down && global.facing == 0)
                turned = 0
            if (turned == 1)
                global.facing = 1
        }
    }
}
if obj_time.down
{
    if (movement == 1)
    {
        if (obj_time.up == 0)
        {
            turned = 1
            y += floor((3 * movemultiplier))
            if (moving != true && (!fun))
                image_index = 1
            moving = true
            if (!fun)
                image_speed = 0.2
            if (obj_time.right && global.facing == 1)
                turned = 0
            if (obj_time.left && global.facing == 3)
                turned = 0
            if (turned == 1)
                global.facing = 0
        }
    }
}
if (global.debug == true)
{
    if (keyboard_check(vk_shift) && keyboard_check_pressed(ord("C")))
    {
        scr_makecaterpillar(obj_mainchara.x, ((obj_mainchara.y - 16) + 2), 1, 0)
        scr_makecaterpillar(obj_mainchara.x, ((obj_mainchara.y - 12) - 2), 2, 2)
        scr_makecaterpillar((obj_mainchara.x + 4), ((obj_mainchara.y - 20) + 2), 3, 3)
    }
}
if control_check_pressed(0)
    event_user(0)
if control_check_pressed(2)
    event_user(2)
with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
    event_user(9)
if (instance_exists(obj_battler) == 0)
{
    scr_depth()
    if (global.flag[85] == 1 && dsprite == spr_maincharad_umbrella)
        depth = (50000 - ((y * 10) + 300))
}
