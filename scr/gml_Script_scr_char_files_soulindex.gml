var input = argument0
var color = 255
switch input
{
    case "Green":
        color = make_colour_rgb(4, 99, 7)
        break
    case "Blue":
        color = make_colour_rgb(135, 206, 235)
        break
    case "Purple":
        color = make_colour_rgb(191, 64, 191)
        break
    case "Pink":
        color = make_colour_rgb(255, 192, 203)
        break
}

return color;
