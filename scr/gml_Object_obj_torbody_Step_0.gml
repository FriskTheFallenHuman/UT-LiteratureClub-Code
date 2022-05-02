if (instance_exists(obj_torface) == 0)
    instance_destroy()
else
{
    x = (obj_torface.x + ((obj_torface.sprite_width / 2) - (sprite_width / 2)))
    y = (obj_torface.y + 27)
}
