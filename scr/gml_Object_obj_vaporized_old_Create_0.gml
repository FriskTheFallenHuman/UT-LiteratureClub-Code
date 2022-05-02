sprite_index = global.monstersprite
line = 0
finished = false
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
snd_play(snd_deathnoise)
action_set_alarm(2, 0)
