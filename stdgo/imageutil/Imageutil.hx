package stdgo.imageutil;
/**
    * Package imageutil contains code shared by image-related packages.
**/
class Imageutil {
    /**
        * DrawYCbCr draws the YCbCr source image on the RGBA destination image with
        * r.Min in dst aligned with sp in src. It reports whether the draw was
        * successful. If it returns false, no dst pixels were changed.
        * 
        * This function assumes that r is entirely within dst's bounds and the
        * translation of r from dst coordinate space to src coordinate space is
        * entirely within src's bounds.
    **/
    static public inline function drawYCbCr(_dst:stdgo._internal.image.Image_rgba.RGBA, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_ycbcr.YCbCr, _sp:stdgo._internal.image.Image_point.Point):Bool {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.image.Image_rgba.RGBA>);
        final _src = (_src : stdgo.Ref<stdgo._internal.image.Image_ycbcr.YCbCr>);
        return stdgo._internal.image.internal.imageutil.Imageutil_drawycbcr.drawYCbCr(_dst, _r, _src, _sp);
    }
}
