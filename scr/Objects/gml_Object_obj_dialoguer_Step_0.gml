cur_offs = round((min(((obj_time.time % 30) / 30), 0.5) * 6))

if (!i_ex(writer))
    instance_destroy()
else if control_check_pressed(1)
{
    if (writer.halt == false)
    {
        if (global.typer != 10)
        {
            global.flag[25] += 1
            writer.stringpos = string_length(writer.originalstring)
        }
    }
    control_clear(1)
}

if (global.facechange == 2)
    global.facechange = 0

if (global.facechange == 1 && global.facechoice == 0)
{
    if (i_ex(writer))
    {
        writer.x = (xx + 30)
        writer.writingx = writer.x
        writer.writingxend = writer.writingxend_base
    }

    safe_delete(obj_face)

    global.facechange = 2
}

if (global.facechange == 1)
{
    if (i_ex(writer))
    {
        writer.x = (xx + 68)
        writer.writingx = (writer.x + 20)
        writer.writingxend = writer.writingxend_base

        if (global.facechoice == 1)
        {
            if ((!i_ex(obj_face_torieltalk)) && (!i_ex(obj_face_torielblink)))
                scr_facechoice()
        }

        if (global.facechoice == 2)
        {
            if (!i_ex(obj_face_floweytalk))
                scr_facechoice()
        }

        if (global.facechoice == 3)
        {
            if (!i_ex(obj_face_sans))
                scr_facechoice()
        }

        if (global.facechoice == 4)
        {
            if (global.language == "ja")
            {
                writer.x = (xx + 10)
                writer.writingx = (xx + 30)
                writer.writingxend = (writer.writingxend_base - 38)
            }

            if (!i_ex(obj_face_papyrus))
                scr_facechoice()
        }

        if (global.facechoice == 5)
        {
            if (!i_ex(obj_face_undyne))
                scr_facechoice()
        }

        if (global.facechoice == 6)
        {
            if (!i_ex(obj_face_alphys))
                scr_facechoice()
        }

        if (global.facechoice == 7)
        {
            if (!i_ex(obj_face_asgore))
                scr_facechoice()
        }

        if (global.facechoice == 8)
        {
            if (!i_ex(obj_face_mettaton))
                scr_facechoice()
        }

        if (global.facechoice == 9)
        {
            if (!i_ex(obj_face_asriel))
                scr_facechoice()
        }

        global.facechange = 2
    }
}
