var view = roomMainView
var cam = view_camera[view]
var viewW = camera_get_view_width(cam)
var viewH = camera_get_view_height(cam)
var intendedSize = (dynRatio ? [960, 540] : [640, 480])
if (intendedSize[0] <= 0 || intendedSize[1] <= 0)
    return;
var sizeScaleW = 1
var sizeScaleH = 1
var sizeScale = min(sizeScaleW, sizeScaleH)
var roomSscW = ((viewW == 320 || viewW == 480) ? 0.5 : 1)
var roomSscH = ((viewH == 240 || viewH == 270) ? 0.5 : 1)
var newWorldW = floor(((intendedSize[0] / sizeScale) * roomSscW))
var newWorldH = floor(((intendedSize[1] / sizeScale) * roomSscH))
trueSize = [(newWorldW / roomSscW), (newWorldH / roomSscH)]
if (newWorldW != viewW || newWorldH != viewH)
{
    viewXDiff = (-(((newWorldW - viewW) / 2)))
    viewYDiff = (-(((newWorldH - viewH) / 2)))
    camera_set_view_size(cam, newWorldW, newWorldH)
    camera_set_view_pos(cam, (camera_get_view_x(cam) + viewXDiff), (camera_get_view_y(cam) + viewYDiff))
    view_wport[view] = (newWorldW / roomSscW)
    view_hport[view] = (newWorldH / roomSscW)
}
