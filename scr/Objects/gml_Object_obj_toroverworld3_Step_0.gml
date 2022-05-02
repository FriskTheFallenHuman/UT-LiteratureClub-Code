if (phone != 2)
{
    if instance_exists(obj_torface)
    {
        myinteract = 1
        if instance_exists(obj_face_torieltalk)
            image_index = obj_face_torieltalk.image_index
        else
            image_index = 0
    }
    else
    {
        myinteract = 0
        if (path_position == 1)
        {
            image_index = 0
            image_speed = 0
        }
        else if (path_speed != 0)
            image_speed = 0.2
        if (speed > 0)
            image_speed = 0.2
    }
    scr_npcdir(0)
    if (phone == 1)
        sprite_index = spr_toriel_d_phone
}
if global.charswap
{
    var hugsprite = spr_toriel_monika_hug
    var hug22sprite = spr_toriel_monika_hug2
}
else
{
    hugsprite = spr_toriel_hug
    hug22sprite = spr_toriel_hug2
}
if (sprite_index == hugsprite && image_index >= 2)
{
    image_speed = 0
    sprite_index = hug22sprite
    dsprite = hug22sprite
}
