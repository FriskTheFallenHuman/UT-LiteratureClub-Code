_actorid = argument0
_actorinstance = argument1
_actorname = argument2
obj_cutscene_master.actor_id[_actorid] = _actorinstance
obj_cutscene_master.actor_name[_actorid] = _actorname
with (_actorinstance)
{
    number = argument0
    scr_set_facing_sprites(argument2)
}
return;
