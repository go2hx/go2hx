package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class Properties_asInterface {
    @:keep
    public dynamic function _reverseBracket(_r:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._reverseBracket(_r);
    @:keep
    public dynamic function isOpeningBracket():Bool return __self__.value.isOpeningBracket();
    @:keep
    public dynamic function isBracket():Bool return __self__.value.isBracket();
    @:keep
    public dynamic function class_():_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ return __self__.value.class_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
