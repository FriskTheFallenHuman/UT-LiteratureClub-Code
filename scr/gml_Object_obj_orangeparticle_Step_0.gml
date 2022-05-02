if (goalsize > (size + 0.1))
    size += 0.03
if (goalsize < (size - 0.1))
    size -= 0.03
image_xscale = size
image_yscale = size
image_alpha -= 0.01
if (sanshack == 1)
    image_angle += 5
if (image_alpha < 0.01)
    instance_destroy()
siner += 1
x += (sin((siner / gg)) * rr)
if (sanshack == 1)
    y -= (cos((siner / gg)) * vv)
else
    y += (cos((siner / gg)) * vv)
