__view_set(0, 0, (random(shakex) - random(shakex)))
__view_set(1, 0, (random(shakey) - random(shakey)))
if (turn1 == 0)
{
    __view_set(0, 0, (shakex * choose(1, -1)))
    __view_set(1, 0, (shakey * choose(1, -1)))
    turn1 = 1
}
if (decay == 1)
{
    shakex -= 1
    shakey -= 1
}
if (shakex <= 0 && shakey <= 0)
{
    __view_set(0, 0, 0)
    __view_set(1, 0, 0)
    instance_destroy()
}
