if ((!window_has_focus()) && (!paused) && (!global.disable_os_pause))
{
    audio_master_gain(0.05)
    paused = true
}
else if (window_has_focus() && paused)
{
    audio_master_gain(1)
    paused = false
}
