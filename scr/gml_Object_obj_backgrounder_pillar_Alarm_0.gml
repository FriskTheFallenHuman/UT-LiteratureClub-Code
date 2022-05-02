var obj_char = obj_mainchara
if global.charswap
{
    switch global.charswappedname
    {
        case "Monika":
            obj_char = obj_monika
            break
    }

}
if instance_exists(obj_char)
{
    with (obj_char)
        image_blend = c_black
}
