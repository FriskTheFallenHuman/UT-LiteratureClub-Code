if (global.debuginfos == false)
{
	draw_set_font(fnt_small)
	draw_set_alpha(1)
	draw_set_halign(fa_left)

    if (i_ex(obj_quicheguilt))
    {
        with(obj_quicheguilt)
        {
			draw_set_color(0xFFA914)
			draw_text(obj_mainchara.x, (obj_mainchara.y - 10), string_hash_to_newline(check))
			draw_text(obj_mainchara.x, (obj_mainchara.y - 20), string_hash_to_newline(qtimer))
			draw_set_color(c_white)
        }
    }

    if (i_ex(obj_monsterkidtrigger6))
    {
        with(obj_monsterkidtrigger6)
        {	
			draw_set_color(c_yellow)
			draw_text(obj_mainchara.x, (obj_mainchara.y - 30), string_hash_to_newline(alarm[4]))
			draw_text(obj_mainchara.x, (obj_mainchara.y - 10), string_hash_to_newline(unbuffer))
			draw_set_color(c_white)
        }
    }

	if (collshower == true)
	{
		with(obj_solidparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_lime, c_lime, c_lime, c_lime, true)
			
		with(obj_solidnpcparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_blue, c_blue, c_blue, c_blue, true)
			
		with(obj_doorparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)

		with(obj_mainchara) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, true)

		if (global.inbattle)
		{
			with(blt_parent) 
				draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_purple, c_purple, c_purple, c_purple, true)
			
			with(obj_borderparent) 
				draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_silver, c_silver, c_silver, c_silver, true)
			
			with(obj_btparent) 
				draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, true)
				
			with(obj_bulletgenparent) 
				draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_aqua, c_aqua, c_aqua, c_aqua, true)
				
			with(obj_monsterparent) 
				draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_navy, c_navy, c_navy, c_navy, true)
		}	
	}
	
	if (maskshower == true)
	{
		with(all)
		{
			if (object_get_mask(object_index))
				draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5)
		}
	}
	
	if (nameshower == true)
	{
		with(all)
		{
			txt = (string(id) + " - " + object_get_name(object_index))
			draw_set_alpha(0.5)
			draw_set_halign(fa_center)
			draw_set_color(c_white)
			draw_text((x+15), (y-10), txt)
			draw_set_halign(fa_left)
			draw_set_alpha(1)
		}
	}
}