global.cinstance[argument3] = instance_create(argument0, argument1, obj_caterpillar_parent)
global.cinstance[argument3].target = (10 + (argument3 * 10))
if (argument2 == 1)
{
    with (global.cinstance[argument3])
    {
        name = "sayori"
        usprite = spr_sayoriu
        dsprite = spr_sayorid
        rsprite = spr_sayorir
        lsprite = spr_sayoril
    }
}
if (argument2 == 2)
{
    with (global.cinstance[argument3])
    {
        name = "yuri"
        usprite = spr_yuriu
        dsprite = spr_yurid
        rsprite = spr_yurir
        lsprite = spr_yuril
    }
}
if (argument2 == 3)
{
    with (global.cinstance[argument3])
    {
        name = "natsuki"
        usprite = spr_natsukiu
        dsprite = spr_natsukid
        rsprite = spr_natsukir
        lsprite = spr_natsukil
    }
}
return global.cinstance[argument3];