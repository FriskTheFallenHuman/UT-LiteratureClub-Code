if global.charswap
    var hug3sprite = spr_toriel_monika_hug3
else
    hug3sprite = spr_toriel_hug3
if (sprite_index == hug3sprite)
{
    obj_mainchara.visible = true
    image_speed = 0
    sprite_index = spr_toriel_d
    dsprite = spr_toriel_d
}
