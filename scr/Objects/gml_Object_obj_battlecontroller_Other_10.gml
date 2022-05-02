if (won == 1)
{
    if (instance_exists(OBJ_WRITER) == 0)
        room_goto(global.currentroom)
}
if (won == 1)
{
    if (instance_exists(OBJ_WRITER) == 1)
    {
        if (OBJ_WRITER.halt != false)
            room_goto(global.currentroom)
    }
}
