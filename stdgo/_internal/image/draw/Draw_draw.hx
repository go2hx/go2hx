package stdgo._internal.image.draw;
function draw(_dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _op:stdgo._internal.image.draw.Draw_op.Op):Void {
        stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst, _r?.__copy__(), _src, _sp?.__copy__(), (null : stdgo._internal.image.Image_image.Image), (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point), _op);
    }
