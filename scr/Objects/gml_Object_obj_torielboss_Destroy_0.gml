script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
global.monster[0] = true
with (obj_battlecontroller)
    visible = false
global.xp += 150
script_execute(scr_levelup)
global.border = 0
SCR_BORDERSETUP()
with (obj_hpname)
    instance_destroy()
with (obj_battlebg)
    instance_destroy()
with (obj_btparent)
    instance_destroy()
with (obj_borderparent)
    instance_destroy()
