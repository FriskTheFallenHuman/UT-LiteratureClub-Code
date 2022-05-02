if (!turnoff)
{
    if (global.battlegroup == 95)
        instance_create((-100 + random((room_width + 200))), (room_height - 10), obj_orangeparticle)
    else
        instance_create((-100 + random((room_width + 200))), (room_height + 10), obj_orangeparticle)
}
else if instance_exists(obj_orangeparticle)
    instance_destroy(obj_orangeparticle)
