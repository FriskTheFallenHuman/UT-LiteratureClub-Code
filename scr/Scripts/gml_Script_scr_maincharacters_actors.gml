var comment = ""
actor_count = 0
mc = 0
var charobj = obj_mainchara
var charname = "mainchara"
if global.charswap
{
    charobj = obj_monika
    comment = "asset resolver moment"
    object_get_name(charobj)
    charname = "monika"
}
mc_actor = instance_create(charobj.x, charobj.y, obj_actor)
scr_actor_setup(mc, mc_actor, charname)
mc_actor.sprite_index = charobj.sprite_index
mc_actor.depth = charobj.depth
with (charobj)
    visible = false
if global.charswap
{
    moni = mc
    moni_actor = mc_actor
}
return;
