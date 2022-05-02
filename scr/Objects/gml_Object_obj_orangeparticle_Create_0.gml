if (global.battlegroup == 95)
    sanshack = 1
else
    sanshack = 0
size = (0.4 + random(0.8))
goalsize = (0.2 + random(1.4))
image_alpha = 0.9
gravity = (-0.1 + random(0.1))
hspeed = (2 + random(-4))
vspeed = -1
siner = random(360)
rr = (random(0.5) - 0.25)
vv = (random(0.5) - 0.25)
gg = (2 + random(4))
image_speed = 0.25
if (sanshack == 1)
{
    if global.flag[0]
        sprite_index = spr_pixeltall
    else
        sprite_index = choose(689, 682)
}
else
    image_index = random(8)
