image_speed = 0
walk = false
talk_enabled = 0
facechoice = 0
typer = 5
fun = true
follow = 0
runmove = false
dir = 0
walkbuffer = 0
walktimer = 0
name = "frisk"
target = 10
parent = obj_mainchara
dsprite = parent.dsprite
usprite = parent.usprite
lsprite = parent.lsprite
rsprite = parent.rsprite
dtsprite = parent.dsprite
utsprite = parent.usprite
ltsprite = parent.lsprite
rtsprite = parent.rsprite
dsprite_run = parent.dsprite
rsprite_run = parent.rsprite
usprite_run = parent.usprite
lsprite_run = parent.lsprite
if (global.flag[85] == 1)
{
    dsprite = parent.dsprite
    usprite = parent.usprite
    lsprite = parent.lsprite
    rsprite = parent.rsprite
}
mywidth = sprite_width
myheight = sprite_height
for (i = 0; i < 75; i += 1)
{
    remx[i] = parent.x
    remy[i] = parent.y
    facing[i] = global.facing
}
for (i = 0; i < 4; i += 1)
{
    xoffset[i] = 0
    yoffset[i] = 0
}
sprite = sprite_index
sprite_subimg = image_index
sprite_x = x
sprite_y = y
prevx = x
prevy = y
