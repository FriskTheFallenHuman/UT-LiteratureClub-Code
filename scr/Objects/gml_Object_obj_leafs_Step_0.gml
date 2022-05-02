switch leafs_preset_direction
{
    case 0:
        part_type_direction(leafsflake, 270, 270, 0, 0)
        break
    case 1:
        part_type_direction(leafsflake, 305, 295, 0, 0)
        break
    case 2:
    default:
        part_type_direction(leafsflake, 295, 305, 0, 4)
        break
}

part_type_orientation(leafsflake, 0, 360, random(0.1), 0, 0)
part_emitter_region(leafs, leafs_emitter, (view_xview[0] - 100), ((view_xview[0] + view_wview[0]) + 200), view_yview[0], ((view_yview[0] - 5) - view_hview[0]), 0, 0)
