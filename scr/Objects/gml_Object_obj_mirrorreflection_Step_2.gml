if global.charswap
{
    if instance_exists(obj_monika)
    {
        image_blend = obj_monika.image_blend
        x = obj_monika.x
        y = (horizon - (obj_monika.y - horizon))
        if (y < ceiling)
            y = ceiling
        sprite_index = obj_monika.sprite_index
        image_index = obj_monika.image_index
        if (sprite_index == spr_monikad && flip == 0)
        {
            sprite_index = spr_monikau
            flip = 1
        }
        if (sprite_index == spr_monikau && flip == 0)
        {
            sprite_index = spr_monikad
            flip = 1
        }
        flip = 0
    }
}
else if instance_exists(obj_mainchara)
{
    image_blend = obj_mainchara.image_blend
    x = obj_mainchara.x
    y = (horizon - (obj_mainchara.y - horizon))
    if (y < ceiling)
        y = ceiling
    sprite_index = obj_mainchara.sprite_index
    image_index = obj_mainchara.image_index
    if (sprite_index == spr_maincharad && flip == 0)
    {
        sprite_index = spr_maincharau
        flip = 1
    }
    if (sprite_index == spr_maincharau && flip == 0)
    {
        sprite_index = spr_maincharad
        flip = 1
    }
    flip = 0
}