if (os_type == os_windows)
    global.osflavor = 1
else if (os_type == os_ps4 || os_type == os_psvita)
    global.osflavor = 4
else if (os_type == os_switch_beta)
    global.osflavor = 5
else
    global.osflavor = 2

global.locale = ((os_get_language() + "_") + string_upper(os_get_region()))

if (global.osflavor >= 1)
{
    application_surface_enable(true)
    application_surface_draw_enable(false)
}

if (os_type == os_switch_beta && (!variable_global_exists("switchlogin")))
{
    for (global.switchlogin = -1; global.switchlogin < 0; global.switchlogin = switch_accounts_select_account(1, 0, 0)) {}
}

if (os_type == os_switch_beta)
{
    switch_controller_support_set_defaults()
    switch_controller_support_set_singleplayer_only(1)
    switch_controller_set_supported_styles(7)
    missing_controller_timeout = 0
}

global.savedata_async_id = -1
global.savedata_async_load = 0
global.savedata_error = 0
global.savedata_debuginfo = ""
global.disable_os_pause = 0

screen_shake = 0
paused = false
idle = 0
idle_time = 0
up = 0
down = 0
left = 0
right = 0
run = 0
quit = 0
try_up = 0
try_down = 0
try_left = 0
try_right = 0
canquit = 1
fullscreen_toggle = false
window_center_toggle = false
screenshot_number = 0
screwed = 0
h_skip = 0
j_xpos = 0
j_ypos = 0
j_dir = 0
j_fr = 0
j_fl = 0
j_fu = 0
j_fd = 0
j_fr_p = 0
j_fl_p = 0
j_fu_p = 0
j_fd_p = 0

for (var i = 0; i < 12; i += 1)
{
    j_prev[i] = 0
    j_on[i] = 0
}

global.button0 = 2
global.button1 = 1
global.button2 = 4
global.analog_sense = 0.15
global.analog_sense_sense = 0.01
global.joy_dir = 0

if (os_type == os_ps4 || os_type == os_psvita)
{
    if (substr(global.locale, 1, 2) == "ja")
    {
        global.button0 = gp_face2
        global.button1 = gp_face1
    }
    else
    {
        global.button0 = gp_face1
        global.button1 = gp_face2
    }
    global.button2 = gp_face4
}
else if (os_type == os_switch_beta)
{
    global.button0 = gp_face2
    global.button1 = gp_face1
    global.button2 = gp_face4
}

global.default_button0 = global.button0
global.default_button1 = global.button1
global.default_button2 = global.button2
global.default_analog_sense = global.analog_sense
global.default_analog_sense_sense = global.analog_sense_sense
global.default_joy_dir = global.joy_dir
global.screen_border_id = 0
global.screen_border_active = false
global.screen_border_alpha = 1
global.screen_border_state = 0
global.screen_border_dynamic_fade_id = 0
global.screen_border_dynamic_fade_level = 0
global.screen_border_activate_on_game_over = 0

debug_r = 0
debug_f = 0
j1 = 0
j2 = 0
ja = 0
j_ch = 0
jt = 0
i = 0

while (i < gamepad_get_device_count())
{
    if gamepad_is_connected(i)
    {
        if (j_ch > 0)
        {
            j_ch = 0
            break
        }
        else
        {
            j_ch = (i + 1)
            i++
            continue
        }
    }
    else
    {
        i++
        continue
    }
}

if (j_ch == 0)
    j_ch = 1

spec_rtimer = 0
global.endsong_loaded = 0

control_init()
scr_kanatype_init()

if (!variable_global_exists("text_data_en"))
    script_execute(textdata_en)

if (!variable_global_exists("text_data_ja"))
    script_execute(textdata_ja)

if (os_type == os_switch_beta)
    global.language = substr(switch_language_get_desired_language(), 1, 2)
else
    global.language = substr(global.locale, 1, 2)

if (global.language != "ja")
    global.language = "en"

if (!variable_global_exists("trophy_init_complete"))
{
    global.trophy_init_complete = 0
    trophy_ts = -1
}

font_add_enable_aa(0)
global.fnt_halogen = font_add("data\\fonts\\Halogen.ttf", 12, 0, 0, 32, 127)
global.fnt_m1 = font_add("data\\fonts\\m1.ttf", 17, 0, 0, 32, 127)
global.fnt_n1 = font_add("data\\fonts\\n1.ttf", 12, 0, 0, 32, 127)
global.fnt_s1 = font_add("data\\fonts\\s1.ttf", 12, 0, 0, 32, 127)
global.fnt_y1 = font_add("data\\fonts\\y1.ttf", 12, 0, 0, 32, 127)
global.fnt_8bitoperator = font_add("data\\fonts\\8bitoperator_jve.ttf", 24, 0, 0, 32, 127)

mouse_moving = 0
mx = mouse_x
my = mouse_y
