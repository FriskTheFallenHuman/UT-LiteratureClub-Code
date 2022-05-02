if (active == false)
{
    beenset = true
    mycamerax = __view_get(0, camera)
    mycameray = __view_get(1, camera)
    if (global.flag[12] == 0)
    {
        __view_set(0, camera, (mycamerax + shakex))
        __view_set(1, camera, (mycameray + shakey))
    }
    shakesign = (-shakesign)
    active = true
    alarm[0] = shakespeed
}
