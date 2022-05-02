if (argument1 < -3 || argument1 > 7)
    return argument0;
var result = 0
switch argument1
{
    case -3:
        result = ease_in_bounce(argument0, 0, 1, 1)
    case -2:
        result = ease_in_elastic(argument0, 0, 1, 1)
    case -1:
        var _s = 1.70158
        result = ((argument0 * argument0) * (((_s + 1) * argument0) - _s))
    case 0:
        result = argument0
    case 1:
        result = ((-(cos((argument0 * 1.5707963267948966)))) + 1)
    case 6:
        result = power(2, (10 * (argument0 - 1)))
    case 7:
        result = (-((sqrt((1 - sqr(argument0))) - 1)))
    default:
        result = power(argument0, argument1)
}

return result;
