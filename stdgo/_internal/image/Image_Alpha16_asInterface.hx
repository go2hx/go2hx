package stdgo._internal.image;
import stdgo._internal.errors.Errors;
import stdgo._internal.image.color.Color;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.testing.Testing;
import stdgo._internal.strconv.Strconv;
class Alpha16_asInterface {
    @:keep
    @:tdfield
    public dynamic function opaque():Bool return @:_0 __self__.value.opaque();
    @:keep
    @:tdfield
    public dynamic function subImage(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Image.Image return @:_0 __self__.value.subImage(_r);
    @:keep
    @:tdfield
    public dynamic function setAlpha16(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Alpha16.Alpha16):Void @:_0 __self__.value.setAlpha16(_x, _y, _c);
    @:keep
    @:tdfield
    public dynamic function setRGBA64(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_RGBA64.RGBA64):Void @:_0 __self__.value.setRGBA64(_x, _y, _c);
    @:keep
    @:tdfield
    public dynamic function set(_x:stdgo.GoInt, _y:stdgo.GoInt, _c:stdgo._internal.image.color.Color_Color.Color):Void @:_0 __self__.value.set(_x, _y, _c);
    @:keep
    @:tdfield
    public dynamic function pixOffset(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.pixOffset(_x, _y);
    @:keep
    @:tdfield
    public dynamic function alpha16At(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo._internal.image.color.Color_Alpha16.Alpha16 return @:_0 __self__.value.alpha16At(_x, _y);
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
    public dynamic function colorModel():stdgo._internal.image.color.Color_Model.Model return @:_0 __self__.value.colorModel();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.image.Image_Alpha16Pointer.Alpha16Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
