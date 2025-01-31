package stdgo._internal.image.draw;
import stdgo._internal.image.internal.imageutil.Imageutil;
import stdgo._internal.image.color.Color;
function draw(_dst:stdgo._internal.image.draw.Draw_Image.Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point, _op:stdgo._internal.image.draw.Draw_Op.Op):Void {
        stdgo._internal.image.draw.Draw_drawMask.drawMask(_dst, _r?.__copy__(), _src, _sp?.__copy__(), (null : stdgo._internal.image.Image_Image.Image), (new stdgo._internal.image.Image_Point.Point() : stdgo._internal.image.Image_Point.Point), _op);
    }
