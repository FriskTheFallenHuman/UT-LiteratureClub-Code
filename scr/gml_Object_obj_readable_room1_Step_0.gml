event_inherited()
if (instance_exists(mydialoguer) == 0)
{
    if secret_jingle
    {
        secret_jingle = 0
        myjingle = instance_create(0, 0, obj_jingle_maker)
        with (myjingle)
            jingle_play = 1
    }
}
