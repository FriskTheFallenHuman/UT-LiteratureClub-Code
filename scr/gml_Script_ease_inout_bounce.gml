if (argument0 < (argument3 * 0.5))
    return ((ease_in_bounce((argument0 * 2), 0, argument2, argument3) * 0.5) + argument1);
return (((ease_out_bounce(((argument0 * 2) - argument3), 0, argument2, argument3) * 0.5) + (argument2 * 0.5)) + argument1);
