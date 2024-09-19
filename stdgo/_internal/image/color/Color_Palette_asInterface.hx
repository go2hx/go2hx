package stdgo._internal.image.color;
class Palette_asInterface {
    @:keep
    public dynamic function index(_c:stdgo._internal.image.color.Color_Color.Color):stdgo.GoInt return __self__.value.index(_c);
    @:keep
    public dynamic function convert(_c:stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Color.Color return __self__.value.convert(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.image.color.Color_Palette.Palette>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
