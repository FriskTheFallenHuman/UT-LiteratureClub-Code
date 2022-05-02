instance_create(0, 0, obj_fader)
vol = 0.8
if (global.flag[7] == 0)
{
    shopmus = caster_load("music/frogger_shop.ogg")
    caster_loop(shopmus, vol, 1)
}
menumax = 3
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
item0pic = spr_heart
item1pic = spr_heart
item2pic = spr_heart
item3pic = spr_heart
item[0] = 2
item[1] = 6
item[2] = 8
item[3] = 5
sell = 0
bought = 0
mainmessage = 0
itemcost[0] = 5
itemcost[1] = 12
itemcost[2] = 7
itemcost[3] = 1
minimenuy = 120
global.typer = 23
scr_setfont(fnt_maintext)
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 100
instance_create(shx, 13, obj_frogger_body)
soldo = 0
