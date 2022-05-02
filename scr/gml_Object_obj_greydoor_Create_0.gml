myinteract = 0
touched = false
if ((!room) == room_ruins12)
{
    ch = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
    if (ch != 4)
        instance_destroy()
}
else
    ch = 0
con = 0
image_speed = 0
