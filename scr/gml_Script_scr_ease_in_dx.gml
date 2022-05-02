if (argument4 < -3 || argument4 > 6)
    return argument0;
var result = 0
switch argument4
{
    case -3:
        result = ease_in_bounce(argument0, argument1, argument2, argument3)
    case -2:
        result = ease_in_elastic(argument0, argument1, argument2, argument3)
    case -1:
        var _s = 1.70158
        result = ((argument0 * argument0) * (((_s + 1) * argument0) - _s))
    case 0:
        argument0 /= argument3
        result = ((-(cos((argument0 * 1.5707963267948966)))) + 1)
    case 1:
        result = power(2, (10 * (argument0 - 1)))
    case 6:
        result = (-(sqrt((1 - sqr(argument0)))))
    default:
        result = ((argument2 * power((argument0 / argument3), argument4)) + argument1)
}

return result;
