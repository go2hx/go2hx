package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
class Uniform_asInterface {
    @:keep
    @:tdfield
    public dynamic function opaque():Bool return @:_0 __self__.value.opaque();
    @:keep
    @:tdfield
    public dynamic function rGBA64At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_RGBA64.RGBA64 return @:_0 __self__.value.rGBA64At(_x, _y);
    @:keep
    @:tdfield
    public dynamic function at(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Color.Color return @:_0 __self__.value.at(_x, _y);
    @:keep
    @:tdfield
    public dynamic function bounds():stdgo._internal.image.Image_Rectangle.Rectangle return @:_0 __self__.value.bounds();
    @:keep
    @:tdfield
    public dynamic function convert(_0:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color return @:_0 __self__.value.convert(_0);
    @:keep
    @:tdfield
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return @:_0 __self__.value.colorModel();
    @:keep
    @:tdfield
    public dynamic function rGBA():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; var _2 : stdgo.GoUInt32; var _3 : stdgo.GoUInt32; } return @:_0 __self__.value.rGBA();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.Image_UniformPointer.UniformPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
