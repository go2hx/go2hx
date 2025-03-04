package stdgo.image.draw;
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
@:interface @:forward abstract Image(stdgo._internal.image.draw.Draw_image.Image) from stdgo._internal.image.draw.Draw_image.Image to stdgo._internal.image.draw.Draw_image.Image {
    @:from
    static function fromHaxeInterface(x:{ function set(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void; function at(_0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_color.Color; function bounds():stdgo._internal.image.Image_rectangle.Rectangle; function colorModel():stdgo._internal.image.color.Color_model.Model; }):Image {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Image = { set : (_0, _1, _2) -> x.set(_0, _1, _2), at : (_0, _1) -> x.at(_0, _1), bounds : () -> x.bounds(), colorModel : () -> x.colorModel(), __underlying__ : () -> __f__() };
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
@:interface @:forward abstract RGBA64Image(stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image) from stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image to stdgo._internal.image.draw.Draw_rgba64image.RGBA64Image {
    @:from
    static function fromHaxeInterface(x:{ function set(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void; function setRGBA64(_x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void; function at(_0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_color.Color; function bounds():stdgo._internal.image.Image_rectangle.Rectangle; function colorModel():stdgo._internal.image.color.Color_model.Model; function rGBA64At(_0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64; }):RGBA64Image {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RGBA64Image = { set : (_0, _1, _2) -> x.set(_0, _1, _2), setRGBA64 : (_0, _1, _2) -> x.setRGBA64(_0, _1, _2), at : (_0, _1) -> x.at(_0, _1), bounds : () -> x.bounds(), colorModel : () -> x.colorModel(), rGBA64At : (_0, _1) -> x.rGBA64At(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Quantizer_static_extension {
    static public function quantize(t:stdgo._internal.image.draw.Draw_quantizer.Quantizer, _p:stdgo._internal.image.color.Color_palette.Palette, _m:stdgo._internal.image.Image_image.Image):stdgo._internal.image.color.Color_palette.Palette {
        return stdgo._internal.image.draw.Draw_quantizer_static_extension.Quantizer_static_extension.quantize(t, _p, _m);
    }
}
@:interface @:forward abstract Quantizer(stdgo._internal.image.draw.Draw_quantizer.Quantizer) from stdgo._internal.image.draw.Draw_quantizer.Quantizer to stdgo._internal.image.draw.Draw_quantizer.Quantizer {
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
@:interface @:forward abstract Drawer(stdgo._internal.image.draw.Draw_drawer.Drawer) from stdgo._internal.image.draw.Draw_drawer.Drawer to stdgo._internal.image.draw.Draw_drawer.Drawer {
    @:from
    static function fromHaxeInterface(x:{ function draw(_dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void; }):Drawer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Drawer = { draw : (_0, _1, _2, _3) -> x.draw(_0, _1, _2, _3), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.image.draw.Draw.T_clipTest_static_extension) @:dox(hide) abstract T_clipTest(stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest) from stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest to stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest {
    public var _desc(get, set) : String;
    function get__desc():String return this._desc;
    function set__desc(v:String):String {
        this._desc = (v : stdgo.GoString);
        return v;
    }
    public var _r(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get__r():stdgo._internal.image.Image_rectangle.Rectangle return this._r;
    function set__r(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this._r = v;
        return v;
    }
    public var _dr(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get__dr():stdgo._internal.image.Image_rectangle.Rectangle return this._dr;
    function set__dr(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this._dr = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get__sr():stdgo._internal.image.Image_rectangle.Rectangle return this._sr;
    function set__sr(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this._sr = v;
        return v;
    }
    public var _mr(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get__mr():stdgo._internal.image.Image_rectangle.Rectangle return this._mr;
    function set__mr(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this._mr = v;
        return v;
    }
    public var _sp(get, set) : stdgo._internal.image.Image_point.Point;
    function get__sp():stdgo._internal.image.Image_point.Point return this._sp;
    function set__sp(v:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        this._sp = v;
        return v;
    }
    public var _mp(get, set) : stdgo._internal.image.Image_point.Point;
    function get__mp():stdgo._internal.image.Image_point.Point return this._mp;
    function set__mp(v:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        this._mp = v;
        return v;
    }
    public var _nilMask(get, set) : Bool;
    function get__nilMask():Bool return this._nilMask;
    function set__nilMask(v:Bool):Bool {
        this._nilMask = v;
        return v;
    }
    public var _r0(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get__r0():stdgo._internal.image.Image_rectangle.Rectangle return this._r0;
    function set__r0(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this._r0 = v;
        return v;
    }
    public var _sp0(get, set) : stdgo._internal.image.Image_point.Point;
    function get__sp0():stdgo._internal.image.Image_point.Point return this._sp0;
    function set__sp0(v:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        this._sp0 = v;
        return v;
    }
    public var _mp0(get, set) : stdgo._internal.image.Image_point.Point;
    function get__mp0():stdgo._internal.image.Image_point.Point return this._mp0;
    function set__mp0(v:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        this._mp0 = v;
        return v;
    }
    public function new(?_desc:String, ?_r:stdgo._internal.image.Image_rectangle.Rectangle, ?_dr:stdgo._internal.image.Image_rectangle.Rectangle, ?_sr:stdgo._internal.image.Image_rectangle.Rectangle, ?_mr:stdgo._internal.image.Image_rectangle.Rectangle, ?_sp:stdgo._internal.image.Image_point.Point, ?_mp:stdgo._internal.image.Image_point.Point, ?_nilMask:Bool, ?_r0:stdgo._internal.image.Image_rectangle.Rectangle, ?_sp0:stdgo._internal.image.Image_point.Point, ?_mp0:stdgo._internal.image.Image_point.Point) this = new stdgo._internal.image.draw.Draw_t_cliptest.T_clipTest(
(_desc : stdgo.GoString),
_r,
_dr,
_sr,
_mr,
_sp,
_mp,
_nilMask,
_r0,
_sp0,
_mp0);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.draw.Draw.T_floydSteinberg_static_extension) @:dox(hide) abstract T_floydSteinberg(stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg) from stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg to stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg {
    public function new() this = new stdgo._internal.image.draw.Draw_t_floydsteinberg.T_floydSteinberg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.draw.Draw.T_slowestRGBA_static_extension) @:dox(hide) abstract T_slowestRGBA(stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA) from stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA to stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get_rect():stdgo._internal.image.Image_rectangle.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image_rectangle.Rectangle) this = new stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.draw.Draw.T_slowerRGBA_static_extension) @:dox(hide) abstract T_slowerRGBA(stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA) from stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA to stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : stdgo._internal.image.Image_rectangle.Rectangle;
    function get_rect():stdgo._internal.image.Image_rectangle.Rectangle return this.rect;
    function set_rect(v:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_rectangle.Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:stdgo._internal.image.Image_rectangle.Rectangle) this = new stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.draw.Draw.T_drawTest_static_extension) @:dox(hide) abstract T_drawTest(stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest) from stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest to stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest {
    public var _desc(get, set) : String;
    function get__desc():String return this._desc;
    function set__desc(v:String):String {
        this._desc = (v : stdgo.GoString);
        return v;
    }
    public var _src(get, set) : stdgo._internal.image.Image_image.Image;
    function get__src():stdgo._internal.image.Image_image.Image return this._src;
    function set__src(v:stdgo._internal.image.Image_image.Image):stdgo._internal.image.Image_image.Image {
        this._src = v;
        return v;
    }
    public var _mask(get, set) : stdgo._internal.image.Image_image.Image;
    function get__mask():stdgo._internal.image.Image_image.Image return this._mask;
    function set__mask(v:stdgo._internal.image.Image_image.Image):stdgo._internal.image.Image_image.Image {
        this._mask = v;
        return v;
    }
    public var _op(get, set) : Op;
    function get__op():Op return this._op;
    function set__op(v:Op):Op {
        this._op = v;
        return v;
    }
    public var _expected(get, set) : stdgo._internal.image.color.Color_color.Color;
    function get__expected():stdgo._internal.image.color.Color_color.Color return this._expected;
    function set__expected(v:stdgo._internal.image.color.Color_color.Color):stdgo._internal.image.color.Color_color.Color {
        this._expected = v;
        return v;
    }
    public function new(?_desc:String, ?_src:stdgo._internal.image.Image_image.Image, ?_mask:stdgo._internal.image.Image_image.Image, ?_op:Op, ?_expected:stdgo._internal.image.color.Color_color.Color) this = new stdgo._internal.image.draw.Draw_t_drawtest.T_drawTest((_desc : stdgo.GoString), _src, _mask, _op, _expected);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.image.draw.Draw.T_embeddedPaletted_static_extension) @:dox(hide) abstract T_embeddedPaletted(stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted) from stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted to stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted {
    public var paletted(get, set) : stdgo._internal.image.Image_paletted.Paletted;
    function get_paletted():stdgo._internal.image.Image_paletted.Paletted return this.paletted;
    function set_paletted(v:stdgo._internal.image.Image_paletted.Paletted):stdgo._internal.image.Image_paletted.Paletted {
        this.paletted = (v : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>);
        return v;
    }
    public function new(?paletted:stdgo._internal.image.Image_paletted.Paletted) this = new stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted((paletted : stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Op = stdgo._internal.image.draw.Draw_op.Op;
@:dox(hide) typedef T_clipTestPointer = stdgo._internal.image.draw.Draw_t_cliptestpointer.T_clipTestPointer;
@:dox(hide) class T_clipTest_static_extension {

}
@:dox(hide) typedef T_floydSteinbergPointer = stdgo._internal.image.draw.Draw_t_floydsteinbergpointer.T_floydSteinbergPointer;
@:dox(hide) class T_floydSteinberg_static_extension {
    static public function draw(_:T_floydSteinberg, _dst:Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void {
        stdgo._internal.image.draw.Draw_t_floydsteinberg_static_extension.T_floydSteinberg_static_extension.draw(_, _dst, _r, _src, _sp);
    }
}
@:dox(hide) typedef T_slowestRGBAPointer = stdgo._internal.image.draw.Draw_t_slowestrgbapointer.T_slowestRGBAPointer;
@:dox(hide) class T_slowestRGBA_static_extension {
    static public function pixOffset(_p:T_slowestRGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function set(_p:T_slowestRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function rGBA64At(_p:T_slowestRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:T_slowestRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:T_slowestRGBA):stdgo._internal.image.Image_rectangle.Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>);
        return stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:T_slowestRGBA):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowestrgba.T_slowestRGBA>);
        return stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension.colorModel(_p);
    }
}
@:dox(hide) typedef T_slowerRGBAPointer = stdgo._internal.image.draw.Draw_t_slowerrgbapointer.T_slowerRGBAPointer;
@:dox(hide) class T_slowerRGBA_static_extension {
    static public function pixOffset(_p:T_slowerRGBA, _x:StdTypes.Int, _y:StdTypes.Int):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.pixOffset(_p, _x, _y);
    }
    static public function setRGBA64(_p:T_slowerRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.setRGBA64(_p, _x, _y, _c);
    }
    static public function set(_p:T_slowerRGBA, _x:StdTypes.Int, _y:StdTypes.Int, _c:stdgo._internal.image.color.Color_color.Color):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.set(_p, _x, _y, _c);
    }
    static public function rGBA64At(_p:T_slowerRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.rGBA64At(_p, _x, _y);
    }
    static public function at(_p:T_slowerRGBA, _x:StdTypes.Int, _y:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        final _x = (_x : stdgo.GoInt);
        final _y = (_y : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.at(_p, _x, _y);
    }
    static public function bounds(_p:T_slowerRGBA):stdgo._internal.image.Image_rectangle.Rectangle {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        return stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.bounds(_p);
    }
    static public function colorModel(_p:T_slowerRGBA):stdgo._internal.image.color.Color_model.Model {
        final _p = (_p : stdgo.Ref<stdgo._internal.image.draw.Draw_t_slowerrgba.T_slowerRGBA>);
        return stdgo._internal.image.draw.Draw_t_slowerrgba_static_extension.T_slowerRGBA_static_extension.colorModel(_p);
    }
}
@:dox(hide) typedef T_drawTestPointer = stdgo._internal.image.draw.Draw_t_drawtestpointer.T_drawTestPointer;
@:dox(hide) class T_drawTest_static_extension {

}
@:dox(hide) typedef T_embeddedPalettedPointer = stdgo._internal.image.draw.Draw_t_embeddedpalettedpointer.T_embeddedPalettedPointer;
@:dox(hide) class T_embeddedPaletted_static_extension {
    public static function subImage(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_image.Image {
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.subImage(__self__, _0);
    }
    public static function setRGBA64(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int, _2:stdgo._internal.image.color.Color_rgba64.RGBA64):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.setRGBA64(__self__, _0, _1, _2);
    }
    public static function setColorIndex(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int, _2:std.UInt):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        final _2 = (_2 : stdgo.GoUInt8);
        stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.setColorIndex(__self__, _0, _1, _2);
    }
    public static function set(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int, _2:stdgo._internal.image.color.Color_color.Color):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.set(__self__, _0, _1, _2);
    }
    public static function rGBA64At(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_rgba64.RGBA64 {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.rGBA64At(__self__, _0, _1);
    }
    public static function pixOffset(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.pixOffset(__self__, _0, _1);
    }
    public static function opaque(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted):Bool {
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.opaque(__self__);
    }
    public static function colorModel(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted):stdgo._internal.image.color.Color_model.Model {
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.colorModel(__self__);
    }
    public static function colorIndexAt(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int):std.UInt {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.colorIndexAt(__self__, _0, _1);
    }
    public static function bounds(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted):stdgo._internal.image.Image_rectangle.Rectangle {
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.bounds(__self__);
    }
    public static function at(__self__:stdgo._internal.image.draw.Draw_t_embeddedpaletted.T_embeddedPaletted, _0:StdTypes.Int, _1:StdTypes.Int):stdgo._internal.image.color.Color_color.Color {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.image.draw.Draw_t_embeddedpaletted_static_extension.T_embeddedPaletted_static_extension.at(__self__, _0, _1);
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
    static public inline function benchmarkFillOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkfillover.benchmarkFillOver(_b);
    }
    static public inline function benchmarkFillSrc(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkfillsrc.benchmarkFillSrc(_b);
    }
    static public inline function benchmarkCopyOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkcopyover.benchmarkCopyOver(_b);
    }
    static public inline function benchmarkCopySrc(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkcopysrc.benchmarkCopySrc(_b);
    }
    static public inline function benchmarkNRGBAOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarknrgbaover.benchmarkNRGBAOver(_b);
    }
    static public inline function benchmarkNRGBASrc(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarknrgbasrc.benchmarkNRGBASrc(_b);
    }
    static public inline function benchmarkYCbCr(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkycbcr.benchmarkYCbCr(_b);
    }
    static public inline function benchmarkGray(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkgray.benchmarkGray(_b);
    }
    static public inline function benchmarkCMYK(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkcmyk.benchmarkCMYK(_b);
    }
    static public inline function benchmarkGlyphOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkglyphover.benchmarkGlyphOver(_b);
    }
    static public inline function benchmarkRGBAMaskOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkrgbamaskover.benchmarkRGBAMaskOver(_b);
    }
    static public inline function benchmarkGrayMaskOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkgraymaskover.benchmarkGrayMaskOver(_b);
    }
    static public inline function benchmarkRGBA64ImageMaskOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkrgba64imagemaskover.benchmarkRGBA64ImageMaskOver(_b);
    }
    static public inline function benchmarkRGBA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkrgba.benchmarkRGBA(_b);
    }
    static public inline function benchmarkPalettedFill(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkpalettedfill.benchmarkPalettedFill(_b);
    }
    static public inline function benchmarkPalettedRGBA(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkpalettedrgba.benchmarkPalettedRGBA(_b);
    }
    static public inline function benchmarkGenericOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkgenericover.benchmarkGenericOver(_b);
    }
    static public inline function benchmarkGenericMaskOver(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkgenericmaskover.benchmarkGenericMaskOver(_b);
    }
    static public inline function benchmarkGenericSrc(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkgenericsrc.benchmarkGenericSrc(_b);
    }
    static public inline function benchmarkGenericMaskSrc(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.image.draw.Draw_benchmarkgenericmasksrc.benchmarkGenericMaskSrc(_b);
    }
    static public inline function testClip(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testclip.testClip(_t);
    }
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
    static public inline function testDraw(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testdraw.testDraw(_t);
    }
    static public inline function testDrawOverlap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testdrawoverlap.testDrawOverlap(_t);
    }
    /**
        * TestNonZeroSrcPt checks drawing with a non-zero src point parameter.
    **/
    static public inline function testNonZeroSrcPt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testnonzerosrcpt.testNonZeroSrcPt(_t);
    }
    static public inline function testFill(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testfill.testFill(_t);
    }
    static public inline function testDrawSrcNonpremultiplied(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testdrawsrcnonpremultiplied.testDrawSrcNonpremultiplied(_t);
    }
    /**
        * TestFloydSteinbergCheckerboard tests that the result of Floyd-Steinberg
        * error diffusion of a uniform 50% gray source image with a black-and-white
        * palette is a checkerboard pattern.
    **/
    static public inline function testFloydSteinbergCheckerboard(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testfloydsteinbergcheckerboard.testFloydSteinbergCheckerboard(_t);
    }
    /**
        * TestPaletted tests that the drawPaletted function behaves the same
        * regardless of whether dst is an *image.Paletted.
    **/
    static public inline function testPaletted(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testpaletted.testPaletted(_t);
    }
    static public inline function testSqDiff(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.image.draw.Draw_testsqdiff.testSqDiff(_t);
    }
}
