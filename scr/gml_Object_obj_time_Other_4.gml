scr_preload_textures()
if screwed
{
    if (global.flag[0] == 0)
        global.flag[0] = 1
}
if global.charswap
{
    var vessel = asset_get_index(string(global.charvessel))
    var actor = asset_get_index(string(global.charvesselreflection))
    var fake = asset_get_index(string(global.charvesselvoid))
    with (obj_mainchara)
    {
        instance_create(x, y, vessel)
        instance_destroy()
    }
    with (obj_mainchara_actor)
    {
        instance_create(x, y, actor)
        instance_destroy()
    }
    with (obj_mainchara_fake)
    {
        instance_create(x, y, fake)
        instance_destroy()
    }
}
