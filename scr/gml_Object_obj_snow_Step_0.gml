switch snow_preset_direction
{
    case 0:
        part_type_direction(snowflake, 270, 270, 0, 0)
        break
    case 1:
        part_type_direction(snowflake, 305, 295, 0, 0)
        break
    case 2:
    default:
        part_type_direction(snowflake, 295, 305, 0, 4)
        break
}

part_emitter_region(snow, snow_emitter, (view_xview[0] - 100), (view_xview[0] + room_width), view_yview[0], ((view_yview[0] - 5) - view_hview[0]), 1, 0)
