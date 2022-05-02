scr_depth()
depth += 5
moved = 0
walk = false
runmove = false
if (obj_mainchara.x != remx[0])
    moved = 1
if (obj_mainchara.y != remy[0])
    moved = 1
if (moved == 1 && follow <= 0)
{
    for (i = 75; i > 0; i -= 1)
    {
        remx[i] = remx[(i - 1)]
        remy[i] = remy[(i - 1)]
        facing[i] = facing[(i - 1)]
    }
    remx[0] = obj_mainchara.x
    remy[0] = obj_mainchara.y
    facing[0] = global.facing
    dir = facing[target]
    x = (remx[target] + xoffset[dir])
    y = (remy[target] + yoffset[dir])
    if (abs((remx[(target + 1)] - remx[target])) > 4)
        runmove = true
    if (abs((remy[(target + 1)] - remy[target])) > 4)
        runmove = true
}
if (follow == -1)
    fun = true
else
    fun = false
if (follow == 1)
{
    speed = (point_distance(sprite_x, sprite_y, x, y) / 30)
    direction = point_direction(sprite_x, sprite_y, x, y)
    x = sprite_x
    y = sprite_y
    scr_npc_watch(1)
    follow = 2
    alarm[0] = 30
}
if (follow == 3)
{
    speed = 0
    direction = 0
    follow = 0
    scr_npc_watch(1)
}
if (talk_enabled && instance_exists(obj_dialoguer) && instance_exists(obj_dialoguer.writer) && global.facechoice == facechoice && global.typer == typer && obj_dialoguer.writer.stringpos < string_length(obj_dialoguer.writer.originalstring))
{
    if (facing[target] == 0)
        sprite_index = dtsprite
    if (facing[target] == 1)
        sprite_index = rtsprite
    if (facing[target] == 2)
        sprite_index = utsprite
    if (facing[target] == 3)
        sprite_index = ltsprite
    image_speed = 0.25
    sprite = sprite_index
    sprite_subimg = image_index
}
else if (fun == false)
{
    if (x != prevx)
        walk = true
    if (y != prevy)
        walk = true
    if (walk == true)
        walkbuffer = 6
    if (walkbuffer > 3)
    {
        walktimer += 2
        if (runmove == true)
            walktimer += 2
        if (walktimer >= 40)
            walktimer -= 40
        if (walktimer < 10)
            image_index = 0
        if (walktimer >= 10)
            image_index = 1
        if (walktimer >= 20)
            image_index = 2
        if (walktimer >= 30)
            image_index = 3
    }
    if (walkbuffer <= 0)
    {
        if (walktimer < 10)
            walktimer = 9.5
        if (walktimer >= 10 && walktimer < 20)
            walktimer = 19.5
        if (walktimer >= 20 && walktimer < 30)
            walktimer = 29.5
        if (walktimer >= 30)
            walktimer = 39.5
        image_index = 0
    }
    walkbuffer -= 0.75
    image_speed = 0
    if (facing[target] == 0)
        sprite_index = dsprite
    if (facing[target] == 1)
        sprite_index = rsprite
    if (facing[target] == 2)
        sprite_index = usprite
    if (facing[target] == 3)
        sprite_index = lsprite
}
else
{
    image_index = 0
    sprite_subimg = 0
}
if (follow == 0 || follow == 2)
{
    sprite = sprite_index
    sprite_subimg = image_index
    sprite_x = x
    sprite_y = y
}
prevx = x
prevy = y
