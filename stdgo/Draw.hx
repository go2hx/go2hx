package stdgo;
final over : Op = stdgo._internal.image.draw.Draw_over.over;
final src = stdgo._internal.image.draw.Draw_src.src;
var floydSteinberg(get, set) : Drawer;
private function get_floydSteinberg():Drawer return stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg;
private function set_floydSteinberg(v:Drawer):Drawer {
        stdgo._internal.image.draw.Draw_floydsteinberg.floydSteinberg = v;
        return v;
    }
class Image_static_extension {
    static public function set(t:stdgo._internal.image.draw.Draw_image.Image, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_image_static_extension.Image_static_extension.set(t, _x, _y, _c);
    }
}
@:forward abstract Image(stdgo._internal.image.draw.Draw_image.Image) from stdgo._internal.image.draw.Draw_image.Image to stdgo._internal.image.draw.Draw_image.Image {
    @:from
    static function fromHaxeInterface(x:{ function set(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void; }):Image {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Image = { set : (_0, _1, _2) -> x.set(_0, _1, _2), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class RGBA64Image_static_extension {
    static public function setRGBA64(t:stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_rgba64image_static_extension.RGBA64Image_static_extension.setRGBA64(t, _x, _y, _c);
    }
    static public function set(t:stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_rgba64image_static_extension.RGBA64Image_static_extension.set(t, _x, _y, _c);
    }
}
@:forward abstract RGBA64Image(stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image) from stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image to stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image {
    @:from
    static function fromHaxeInterface(x:{ function set(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void; function setRGBA64(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void; }):RGBA64Image {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RGBA64Image = { set : (_0, _1, _2) -> x.set(_0, _1, _2), setRGBA64 : (_0, _1, _2) -> x.setRGBA64(_0, _1, _2), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Quantizer_static_extension {
    static public function quantize(t:stdgo._internal.image.draw.Draw_quantizer.Quantizer, _p:stdgo._internal.image.color.Color_palette.Palette, _m:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_palette.Palette {
        return stdgo._internal.image.draw.Draw_quantizer_static_extension.Quantizer_static_extension.quantize(t, _p, _m);
    }
}
@:forward abstract Quantizer(stdgo._internal.image.draw.Draw_quantizer.Quantizer) from stdgo._internal.image.draw.Draw_quantizer.Quantizer to stdgo._internal.image.draw.Draw_quantizer.Quantizer {
    @:from
    static function fromHaxeInterface(x:{ function quantize(_p:stdgo._internal.image.color.Color_palette.Palette, _m:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_palette.Palette; }):Quantizer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Quantizer = { quantize : (_0, _1) -> x.quantize(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Drawer_static_extension {
    static public function draw(t:stdgo._internal.image.draw.Draw_drawer.Drawer, _dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void {
        stdgo._internal.image.draw.Draw_drawer_static_extension.Drawer_static_extension.draw(t, _dst, _r, _src, _sp);
    }
}
@:forward abstract Drawer(stdgo._internal.image.draw.Draw_drawer.Drawer) from stdgo._internal.image.draw.Draw_drawer.Drawer to stdgo._internal.image.draw.Draw_drawer.Drawer {
    @:from
    static function fromHaxeInterface(x:{ function draw(_dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void; }):Drawer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Drawer = { draw : (_0, _1, _2, _3) -> x.draw(_0, _1, _2, _3), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.image.draw.Draw.T_floydSteinberg_static_extension) @:dox(hide) abstract T_floydSteinberg(stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg) from stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg to stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg {
    public function new() this = new stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Op = stdgo._internal.image.draw.Draw_op.Op;
@:dox(hide) typedef T_floydSteinbergPointer = stdgo._internal.image.draw.Draw_t_floydsteinbergpointer.T_floydSteinbergPointer;
@:dox(hide) class T_floydSteinberg_static_extension {
    static public function draw(_:T_floydSteinberg, _dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void {
        stdgo._internal.image.draw.Draw_t_floydsteinberg_static_extension.T_floydSteinberg_static_extension.draw(_, _dst, _r, _src, _sp);
    }
}
typedef OpPointer = stdgo._internal.image.draw.Draw_oppointer.OpPointer;
class Op_static_extension {
    static public function draw(_op:Op, _dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void {
        stdgo._internal.image.draw.Draw_op_static_extension.Op_static_extension.draw(_op, _dst, _r, _src, _sp);
    }
}
/**
    * Package draw provides image composition functions.
    * 
    * See "The Go image/draw package" for an introduction to this package:
    * https://golang.org/doc/articles/image_draw.html
**/
class Draw {
    /**
        * Draw calls DrawMask with a nil mask.
    **/
    static public inline function draw(_dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _op:Op):Void {
        stdgo._internal.image.draw.Draw_draw.draw(_dst, _r, _src, _sp, _op);
    }
    /**
        * DrawMask aligns r.Min in dst with sp in src and mp in mask and then replaces the rectangle r
        * in dst with the result of a Porter-Duff composition. A nil mask is treated as opaque.
    **/
    static public inline function drawMask(_dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point, _mask:stdgo._internal.image.Image_image.Image, _mp:stdgo._internal.image.Image_point.Point, _op:Op):Void {
        stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst, _r, _src, _sp, _mask, _mp, _op);
    }
}
