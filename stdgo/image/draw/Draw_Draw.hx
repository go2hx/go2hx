package stdgo.image.draw;
/**
    Package draw provides image composition functions.
    
    See "The Go image/draw package" for an introduction to this package:
    https://golang.org/doc/articles/image_draw.html
**/
class Draw {
    /**
        Draw calls DrawMask with a nil mask.
    **/
    static public inline function draw(_dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point, _op:Op):Void {
        stdgo._internal.image.draw.Draw_draw.draw(_dst, _r, _src, _sp, _op);
    }
    /**
        DrawMask aligns r.Min in dst with sp in src and mp in mask and then replaces the rectangle r
        in dst with the result of a Porter-Duff composition. A nil mask is treated as opaque.
    **/
    static public inline function drawMask(_dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point, _mask:stdgo._internal.image.Image_Image.Image, _mp:stdgo._internal.image.Image_Point.Point, _op:Op):Void {
        stdgo._internal.image.draw.Draw_drawMask.drawMask(_dst, _r, _src, _sp, _mask, _mp, _op);
    }
}
