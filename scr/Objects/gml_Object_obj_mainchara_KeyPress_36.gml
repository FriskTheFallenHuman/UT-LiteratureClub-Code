if (global.debug == true && global.interact == 0 && (!instance_exists(obj_battler)) && (!instance_exists(obj_battlegroup_input)))
{
    global.interact = 1
    keyboard_clear(vk_home)
    instance_create(0, 0, obj_battlegroup_input)
}
