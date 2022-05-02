jj = instance_create((x + 146), (y + 56), obj_eyeflash)
if (type[typeno] == 1)
    jj.image_blend = 0xFFA914
if (type[typeno] == 2)
    jj.image_blend = c_orange
if (typeno >= typeamt)
{
    jj.sprite_index = spr_asgore_eyeflash_serious
    jj.image_speed = 0.5
}
