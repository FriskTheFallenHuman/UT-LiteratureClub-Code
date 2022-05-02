frames++
var newpitch = lerp(initpitch, targetpitch, (frames / maxframes))
caster_set_pitch(sndtarget, newpitch)
if (frames >= maxframes)
    instance_destroy()
