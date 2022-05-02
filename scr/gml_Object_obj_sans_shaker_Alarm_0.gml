__view_set(0, 0, (choose(-1, 1) * intensity))
__view_set(1, 0, (choose(1, -1) * intensity))
intensity -= 1
if (intensity == 0)
    instance_destroy()
alarm[0] = 1
