package stdgo.image.draw;
final over : Op = stdgo._internal.image.draw.Draw_over.over;
final src = stdgo._internal.image.draw.Draw_src.src;
var floydSteinberg(get, set) : Drawer;
private function get_floydSteinberg():Drawer return stdgo._internal.image.draw.Draw_floydSteinberg.floydSteinberg;
private function set_floydSteinberg(v:Drawer):Drawer {
        stdgo._internal.image.draw.Draw_floydSteinberg.floydSteinberg = v;
        return v;
    }
class Image_static_extension {
    static public function set(t:stdgo._internal.image.draw.Draw_Image.Image, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        stdgo._internal.image.draw.Draw_Image_static_extension.Image_static_extension.set(t, _x, _y, _c);
    }
}
typedef Image = stdgo._internal.image.draw.Draw_Image.Image;
class RGBA64Image_static_extension {
    static public function setRGBA64(t:stdgo._internal.image.draw.Draw_RGBA64Image.RGBA64Image, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void {
        stdgo._internal.image.draw.Draw_RGBA64Image_static_extension.RGBA64Image_static_extension.setRGBA64(t, _x, _y, _c);
    }
    static public function set(t:stdgo._internal.image.draw.Draw_RGBA64Image.RGBA64Image, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_Color.Color):Void {
        stdgo._internal.image.draw.Draw_RGBA64Image_static_extension.RGBA64Image_static_extension.set(t, _x, _y, _c);
    }
}
typedef RGBA64Image = stdgo._internal.image.draw.Draw_RGBA64Image.RGBA64Image;
class Quantizer_static_extension {
    static public function quantize(t:stdgo._internal.image.draw.Draw_Quantizer.Quantizer, _p:stdgo._internal.image.color.Color_Palette.Palette, _m:stdgo._internal.image.Image_Image.Image):stdgo._internal.image.color.Color_Palette.Palette {
        return stdgo._internal.image.draw.Draw_Quantizer_static_extension.Quantizer_static_extension.quantize(t, _p, _m);
    }
}
typedef Quantizer = stdgo._internal.image.draw.Draw_Quantizer.Quantizer;
class Drawer_static_extension {
    static public function draw(t:stdgo._internal.image.draw.Draw_Drawer.Drawer, _dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Void {
        stdgo._internal.image.draw.Draw_Drawer_static_extension.Drawer_static_extension.draw(t, _dst, _r, _src, _sp);
    }
}
typedef Drawer = stdgo._internal.image.draw.Draw_Drawer.Drawer;
@:structInit @:using(stdgo.image.draw.Draw.T_floydSteinberg_static_extension) abstract T_floydSteinberg(stdgo._internal.image.draw.Draw_T_floydSteinberg.T_floydSteinberg) from stdgo._internal.image.draw.Draw_T_floydSteinberg.T_floydSteinberg to stdgo._internal.image.draw.Draw_T_floydSteinberg.T_floydSteinberg {
    public function new() this = new stdgo._internal.image.draw.Draw_T_floydSteinberg.T_floydSteinberg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Op = stdgo._internal.image.draw.Draw_Op.Op;
typedef T_floydSteinbergPointer = stdgo._internal.image.draw.Draw_T_floydSteinbergPointer.T_floydSteinbergPointer;
class T_floydSteinberg_static_extension {
    static public function draw(_:T_floydSteinberg, _dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Void {
        stdgo._internal.image.draw.Draw_T_floydSteinberg_static_extension.T_floydSteinberg_static_extension.draw(_, _dst, _r, _src, _sp);
    }
}
typedef OpPointer = stdgo._internal.image.draw.Draw_OpPointer.OpPointer;
class Op_static_extension {
    static public function draw(_op:Op, _dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point):Void {
        stdgo._internal.image.draw.Draw_Op_static_extension.Op_static_extension.draw(_op, _dst, _r, _src, _sp);
    }
}
/**
    Package draw provides image composition functions.
    
    See "The Go image/draw package" for an introduction to this package:
    https://golang.org/doc/articles/image_draw.html
**/
class Draw {
    /**
        Draw calls DrawMask with a nil mask.
    **/
    static public function draw(_dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point, _op:Op):Void {
        stdgo._internal.image.draw.Draw_draw.draw(_dst, _r, _src, _sp, _op);
    }
    /**
        DrawMask aligns r.Min in dst with sp in src and mp in mask and then replaces the rectangle r
        in dst with the result of a Porter-Duff composition. A nil mask is treated as opaque.
    **/
    static public function drawMask(_dst:Image, _r:stdgo._internal.image.Image_Rectangle.Rectangle, _src:stdgo._internal.image.Image_Image.Image, _sp:stdgo._internal.image.Image_Point.Point, _mask:stdgo._internal.image.Image_Image.Image, _mp:stdgo._internal.image.Image_Point.Point, _op:Op):Void {
        stdgo._internal.image.draw.Draw_drawMask.drawMask(_dst, _r, _src, _sp, _mask, _mp, _op);
    }
}
