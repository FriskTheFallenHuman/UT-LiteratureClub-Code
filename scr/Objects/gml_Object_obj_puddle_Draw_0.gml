draw_self()
if place_meeting(x, y, obj_monika)
{
    surface_player = surface_create(sprite_width, sprite_height)
    if surface_exists(surface_player)
    {
        surface_set_target(surface_player)
        draw_clear_alpha(c_black, 0)
        with (obj_monika)
        {
            if (rsprite == spr_monikar)
            {
                if (sprite_index == spr_monikar)
                    reflection_sprite = 2905
                if (sprite_index == spr_monikad)
                    reflection_sprite = 2903
                if (sprite_index == spr_monikau)
                    reflection_sprite = 2904
                if (sprite_index == spr_monikal)
                    reflection_sprite = 2906
            }
            draw_sprite_ext(reflection_sprite, image_index, ((x - other.x) + 23), ((y - other.y) - 20), 1, -1, 180, c_white, 0.6)
        }
        with (obj_ladiesfishingrod)
            draw_sprite_ext(sprite_index, image_index, ((x - other.x) + 23), (y - other.y), 1, -1, 0, c_white, 0.6)
        gpu_set_blendmode(bm_subtract)
        draw_sprite(sprite_index, 1, 0, 0)
        gpu_set_blendmode(bm_normal)
        surface_reset_target()
        draw_surface(surface_player, x, y)
        surface_free(surface_player)
    }
}
