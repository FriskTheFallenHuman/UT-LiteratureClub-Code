cxychecker = 0
if (global.plot > 0 || room != room_area1)
{
    if (room == room_area1 && (!((global.interact == 3 && global.entrance > 0))) && instance_exists(obj_mainchara))
    {
        with (obj_mainchara)
        {
            x = 244
            y = 120
        }
    }
    if global.debug
        cxychecker = 1
    else
    {
        instance_destroy()
        return;
    }
}
else
    global.interact = 1
event_inherited()
ev = id
con = 0
blacken = 0
actor_count = 0
allowskip = global.debug
chkname = string_to_hiragana(string_lower(global.charname))
if (chkname == "gaster" || chkname == "がすたー")
    game_restart()
