event_user(0)
if (global.charsunlocked > 0)
{
    scr_windowcaption(scr_gettext("windowcaption_default"))
    if (room == room_fire_operatest)
        scr_windowcaption((scr_gettext("windowcaption_default") + scr_gettext("windowcaption_musical")))
}
scr_setarea()
