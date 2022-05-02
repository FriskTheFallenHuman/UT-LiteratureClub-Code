active = false
if (room == room_water_trashzone1)
{
    if (global.plot < 114)
    {
        global.flag[17] = 0
        active = true
        obj_mainchara.image_angle = -90
        obj_mainchara.y += 10
        global.facing = 0
    }
}
