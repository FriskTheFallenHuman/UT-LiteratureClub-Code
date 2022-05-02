scr_depth()
if (global.flag[7] == 1)
{
    if (global.flag[287] <= global.flag[286])
        global.flag[287] = (global.flag[286] + 1)
}
global.flag[462] = 0
x = (3 * round((x / 3)))
y = (3 * round((y / 3)))
lastfacing = 0
nnn = 0
cutscene = false
oldx = x
oldy = y
image_speed = 0
global.phasing = 0
facing = global.facing
moving = false
movement = 1
is_running = 0
run_index = 0
disable_run = 0
step_type = 0
old_step = 0
global.currentroom = room
scr_setarea()
if (global.interact == 3 && global.entrance > 0)
{
    global.interact = 0
    door_marker = noone
    switch global.entrance
    {
        case 1:
            door_marker = obj_markerA
            break
        case 2:
            door_marker = obj_markerB
            break
        case 4:
            door_marker = obj_markerC
            break
        case 5:
            door_marker = obj_markerD
            break
        case 18:
            door_marker = obj_markerr
            break
        case 19:
            door_marker = obj_markers
            break
        case 20:
            door_marker = obj_markert
            break
        case 21:
            door_marker = obj_markeru
            break
        case 22:
            door_marker = obj_markerv
            break
        case 23:
            door_marker = obj_markerw
            break
        case 24:
            door_marker = obj_markerX
            break
    }

    if (door_marker == noone)
        scr_debug_print(("Invalid entrance: " + string(global.entrance)))
    else if (!instance_exists(door_marker))
        scr_debug_print((((("Missing marker: " + object_get_name(door_marker)) + " (Entrance: ") + string(global.entrance)) + ")"))
    else
    {
        x = door_marker.x
        y = door_marker.y
    }
}
dsprite = spr_maincharad
rsprite = spr_maincharar
usprite = spr_maincharau
lsprite = spr_maincharal
dsprite_run = dsprite
rsprite_run = rsprite
usprite_run = usprite
lsprite_run = lsprite
if (global.flag[85] == 1)
{
    dsprite = spr_maincharad_umbrella
    rsprite = spr_maincharar_umbrella
    usprite = spr_maincharau_umbrella
    lsprite = spr_maincharal_umbrella
}
torrsprite = 1228
torlsprite = 1229
sansprankpsrite = 1480
inwater = 0
h_skip = 0
uncan = 0
m_override = 0
fun = false
switch global.facing
{
    case 0:
        sprite_index = (obj_time.run ? dsprite_run : dsprite)
        break
    case 1:
        sprite_index = (obj_time.run ? rsprite_run : rsprite)
        break
    case 2:
        sprite_index = (obj_time.run ? usprite_run : usprite)
        break
    case 3:
        sprite_index = (obj_time.run ? lsprite_run : lsprite)
        break
}

if (global.flag[480] == 1)
    image_blend = merge_color(c_gray, c_white, 0.3)
