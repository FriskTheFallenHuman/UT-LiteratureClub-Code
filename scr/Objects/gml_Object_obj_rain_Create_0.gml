if (instance_number(obj_rain) > 1 || instance_exists(obj_snow) || instance_exists(obj_ash) || instance_exists(obj_leafs))
    instance_destroy()
rain_preset_direction = 2
rain_preset_region = 0
rain = part_system_create()
part_system_depth(rain, 1000)
raindrop = part_type_create()
part_type_shape(raindrop, 3)
part_type_orientation(raindrop, 0, 0, 0, 0, 1)
part_type_size(raindrop, 0.1, 0.2, 0, 0)
part_type_scale(raindrop, 3, 1)
part_type_speed(raindrop, 7, 15, 0.05, 0)
part_type_alpha2(raindrop, 0.8, 0)
part_type_life(raindrop, 50, 100)
part_type_blend(raindrop, 1)
part_type_color2(raindrop, 16777215, 8388608)
rain_emitter = part_emitter_create(rain)
part_emitter_region(rain, rain_emitter, view_xview[0], (view_xview[0] + room_width), -10, -5, 1, 0)
part_emitter_stream(rain, rain_emitter, raindrop, 3)
repeat (100)
    part_system_update(rain)