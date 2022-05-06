if (writedisplay == true)
{
    debug_printline(("instance_count=" + string(instance_count)), 1)

    if (instance_count > 150)
        debug_printline("THAT'S A LOT OF INSTANCES", 2)
}

lastval[0] = 0

if (interactshower == true)
{
    draw_set_color(c_yellow)
    scr_setfont(fnt_main)
    draw_text_outline(20, 20, ("global.interact=" + string(global.interact)), c_black)
    draw_set_color(c_white)
}

if (caterpillarshower == true && global.debuginfos == false)
{
    if (i_ex(obj_caterpillar_parent))
    {
        with(obj_caterpillar_parent)
        {
            var hh = 10
            var ww = 600
            draw_set_font(fnt_small)
            draw_set_halign(fa_right)
            draw_set_color(c_black)
            draw_text_transformed((ww - 2), (hh + 2), ("follow: " + string(follow)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 12), ((("real coords: " + string(x)) + ", ") + string(y)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 22), ((("fake coords: " + string(sprite_x)) + ", ") + string(sprite_y)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 32), ((("prev coords: " + string(prevx)) + ", ") + string(prevy)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 42), ("sprite_index: " + string(sprite_index)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 52), ("fake sprite: " + string(sprite)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 62), ("image_index: " + string(image_index)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 72), ("fake subimg: " + string(sprite_subimg)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 82), ("talk_enabled: " + string(talk_enabled)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 92), ("obj_dialoguer exists: " + string(i_ex(obj_dialoguer))), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 102), ("global.facechoice: " + string(global.facechoice)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 112), ("local facechoice: " + string(facechoice)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 122), ("global.typer: " + string(global.typer)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 132), ("local typer: " + string(typer)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 142), ("f is for friends that do stuff together: " + string(fun)), 1.5, 1.5, 0)
            draw_text_transformed((ww - 2), (hh + 152), ("image_speed: " + string(image_speed)), 1.5, 1.5, 0)
            if (i_ex(obj_dialoguer) && i_ex(obj_dialoguer.writer))
            {
                draw_text_transformed((ww - 2), (hh + 162), ("writer stringpos: " + string(obj_dialoguer.writer.stringpos)), 1.5, 1.5, 0)
                draw_text_transformed((ww - 2), (hh + 172), ("writer originalstring: " + string(obj_dialoguer.writer.originalstring)), 1.5, 1.5, 0)
                draw_text_transformed((ww - 2), (hh + 182), ("writer originalstring len: " + string(string_length(obj_dialoguer.writer.originalstring))), 1.5, 1.5, 0)
            }
            draw_set_color(c_white)
            draw_text_transformed(ww, hh, ("follow: " + string(follow)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 10), ((("real coords: " + string(x)) + ", ") + string(y)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 20), ((("fake coords: " + string(sprite_x)) + ", ") + string(sprite_y)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 30), ((("prev coords: " + string(prevx)) + ", ") + string(prevy)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 40), ("sprite_index: " + string(sprite_index)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 50), ("fake sprite: " + string(sprite)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 60), ("image_index: " + string(image_index)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 70), ("fake subimg: " + string(sprite_subimg)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 80), ("talk_enabled: " + string(talk_enabled)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 90), ("obj_dialoguer exists: " + string(i_ex(obj_dialoguer))), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 100), ("global.facechoice: " + string(global.facechoice)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 110), ("local facechoice: " + string(facechoice)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 120), ("global.typer: " + string(global.typer)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 130), ("local typer: " + string(typer)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 140), ("f is for friends that do stuff together: " + string(fun)), 1.5, 1.5, 0)
            draw_text_transformed(ww, (hh + 150), ("image_speed: " + string(image_speed)), 1.5, 1.5, 0)
            if (i_ex(obj_dialoguer) && i_ex(obj_dialoguer.writer))
            {
                draw_text_transformed(ww, (hh + 160), ("writer stringpos: " + string(obj_dialoguer.writer.stringpos)), 1.5, 1.5, 0)
                draw_text_transformed(ww, (hh + 170), ("writer originalstring: " + string(obj_dialoguer.writer.originalstring)), 1.5, 1.5, 0)
                draw_text_transformed(ww, (hh + 180), ("writer originalstring len: " + string(string_length(obj_dialoguer.writer.originalstring))), 1.5, 1.5, 0)
            }
            draw_set_halign(fa_left)
        }
    }
}

if (conshower == true && global.debuginfos == false)
{
    if (i_ex(obj_area1_fallevent))
    {
        with(obj_area1_fallevent)
        {
            scr_setfont(fnt_maintext)
            draw_set_halign(fa_right)
            draw_text(0, 30, con)
            draw_text(0, 60, camerax())
            draw_text(0, 70, cameray())
            draw_set_halign(fa_left)
        }
    }
}

if (room == PLACE_LOGO && global.debuginfos == false)
{
    if (i_ex(obj_titleimage_Draw))
    {
        with(obj_titleimage_Draw)
        {
			draw_set_alpha(1)
			draw_set_color(c_white)
			scr_setfont(fnt_maintext)
			draw_text(0, 0, string(logoy))
			draw_text(0, 15, ("Alarm 2: " + string(alarm_get(2))))
			draw_text(0, 25, ("Alarm 3: " + string(alarm_get(3))))
			draw_text(0, 35, ("Text Alpha: " + string(text_alpha)))
			draw_text(0, 45, ("BALL: " + string(ballamount)))
        }
    }
}

if (room == room_settings && global.debuginfos == false)
{
    if (i_ex(obj_settingsmenu))
    {
        with(obj_settingsmenu)
        {
			scr_setfont(fnt_maintext)
			draw_text(0, 0, ((("Menu Pos: " + string(menu)) + " Menu Max: ") + string(menu_max)))
        }
    }
}

if (global.debuginfos)
{
    if (i_ex(obj_time))
    {
        with(obj_time)
        {
			display_set_gui_size(-1, -1)
			texture_set_interpolation(false)
			scr_setfont(fnt_maintext)
			draw_set_color(c_white)
			draw_text(10, 10, string_hash_to_newline(round((time / 30))))
			draw_text(10, 200, global.menuno)
			ms = (delta_time / 1000)
			fps_var = (1 / (ms / 1000))
			draw_set_color(c_lime)
			if (fps < 25)
				draw_set_color(c_yellow)
			if (fps < 20)
				draw_set_color(c_red)
			draw_text(50, 10, ((((("FPS: " + string(fps)) + " (") + string(round(fps_var))) + ") Max: ") + string(room_speed)))
			draw_set_color(draw_color)
			draw_text(10, 25, ((((((room_get_name(room) + " (") + room_get_name(global.currentroom)) + ") - ") + string(room)) + " ") + string(global.currentroom)))
			var roomname = scr_roomname(global.currentroom)
			if (roomname != "")
				roomname = (": " + roomname)
			draw_text(10, 40, ((((scr_areaname() + " (") + string(scr_setarea())) + ")") + roomname))
			if instance_exists(obj_mainchara)
			{
				draw_text(10, 55, ((((("Can Run: " + string(global.allowrun)) + " Stamina: ") + string(global.en)) + "/ ") + string(global.maxen)))
				draw_text(10, 70, (((((((("(" + string(obj_mainchara.x)) + ", ") + string(obj_mainchara.y)) + ")") + " (") + string(obj_mainchara.depth)) + ") E:") + string(global.entrance)))
			}
			var interact_val = "UNKNOWN"
			switch global.interact
			{
				case -1:
					interact_val = "Paused"
					break
				case 0:
					interact_val = "Free Movement"
					break
				case 1:
					interact_val = "Movement Locked"
					break
				case 2:
					interact_val = "Toriel Post-Battle"
					break
				case 3:
					if (instance_exists(obj_battleblcon) || instance_exists(obj_battler) || instance_exists(obj_battlerflowey) || room == room_battle || room == room_floweybattle)
						interact_val = "Battle"
					else if (instance_exists(obj_floweybattler2) || room == room_f_start || room == room_floweyx)
						interact_val = "FFFFFF"
					else
						interact_val = "Room Transition"
					break
				case 4:
					interact_val = "Falling"
					break
				case 5:
					interact_val = "Menu Open"
					break
				case 6:
					interact_val = "Toriel Spike Bridge"
					break
				case 99:
					interact_val = "Toriel Event"
					break
			}

			if (global.interact == 0)
				draw_set_color(c_green)
			else
				draw_set_color(c_yellow)
			draw_text(10, 110, (((("Interact: " + interact_val) + " (") + string(global.interact)) + ")"))
			menu_state = "Enabled"
			draw_set_color(c_green)
			if (global.flag[17] != 0)
			{
				menu_state = "Disabled"
				draw_set_color(c_red)
			}
			else if (!instance_exists(obj_overworldcontroller))
			{
				menu_state = "Unavailable"
				draw_set_color(c_red)
			}
			else if (global.interact == 5)
				menu_state = "Open"
			else if (global.interact > 0)
			{
				menu_state = "Disabled via Interaction"
				draw_set_color(c_yellow)
			}
			draw_text(10, 130, (((("Menu " + menu_state) + " (") + string(global.flag[17])) + ")"))
			draw_set_color(draw_color)
			txt = ((((("Story Plot: " + string(global.plot)) + " ") + "Flags: ") + string(global.flag[5])) + " ")
			draw_text(10, 150, txt)
			if (global.flag[498] == 1)
				draw_set_color(c_red)
			draw_text((10 + string_width(txt)), 150, scr_murderlv())
			draw_set_color(draw_color)
			var texty = 170
			if global.screen_border_active
			{
				txt = ("Border: " + string(global.screen_border_id))
				if (global.screen_border_id == 3)
					txt += ((" (" + string(global.screen_border_state)) + ")")
				txt += ((" (" + string(global.screen_border_alpha)) + ")")
				draw_text(10, texty, txt)
				texty += 20
			}
			draw_set_color(c_green)
			draw_set_color(draw_color)
			texty += 20
			if instance_exists(obj_encountererparent)
			{
				with (obj_encountererparent)
				{
					kill_ptr = global.flag[200]
					kill_counter = global.flag[kill_ptr]
					kill_max = -1
					switch kill_ptr
					{
						case 202:
							kill_max = 20
							break
						case 203:
							kill_max = 16
							break
						case 204:
							kill_max = 18
							break
						case 205:
							kill_max = 40
							break
					}

				}
				draw_set_color(draw_color)
			}
			texty += 20
			draw_set_color(c_yellow)
			if instance_exists(obj_cutscene_master)
			{
				draw_text(10, texty, (("Cutscene master #" + string(obj_cutscene_master.id)) + ": "))
				texty += 15
				draw_text(10, texty, ((("Cutscene command #" + string(obj_cutscene_master.current_command)) + " of ") + string(obj_cutscene_master.maximum_command)))
				texty += 20
			}
			draw_set_color(c_lime)
			draw_text(10, texty, ("Instance Count: " + string(instance_number(all))))
			texty += 20
			draw_set_color(draw_color)
			draw_text(520, 10, ((((("Time: " + string(obj_time_manager.h)) + ":") + string(obj_time_manager.m)) + ":") + string(obj_time_manager.s)))
			draw_text(520, 30, ("Time Morning: " + string(obj_time_manager.time_morning)))
			draw_text(520, 50, ("Time Afternoon: " + string(obj_time_manager.time_afternoon)))
			draw_text(520, 70, ("Time Evening: " + string(obj_time_manager.time_evening)))
			draw_text(520, 90, ("Time Night: " + string(obj_time_manager.time_night)))
			draw_text(520, 110, "------------")
			draw_text_colour(550, 130, (("> " + string(global.charswappedname)) + " <"), c_purple, c_purple, c_white, c_white, 1)
			draw_text(520, 150, ("Char Color: " + string(global.charsoulcolor)))
			draw_text(520, 170, ("Char Vessel: " + string(global.charvessel)))
			draw_text(520, 190, ("Char Actor: " + string(global.charvesselreflection)))
			draw_text(520, 210, ("Char Fake: " + string(global.charvesselvoid)))
			draw_text(520, 230, ("Char Swap: " + string(global.charswap)))
			draw_text(520, 250, string(obj_screen.viewXDiff))
			draw_text(520, 270, string(obj_screen.viewYDiff))
		}
	}
}
else
{
	scr_setfont(fnt_main)
	var dmtext = "> DEBUG MODE <"
	var dmtextw = string_width(dmtext)
	draw_text_colour((((surface_get_width(application_surface) * global.window_scale) / 2) - (dmtextw / 2)), -2, dmtext, c_red, c_red, c_white, c_white, 1)
}