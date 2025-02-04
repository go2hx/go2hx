package stdgo._internal.unicode;
class SpecialCase_asInterface {
    @:keep
    @:tdfield
    public dynamic function toLower(_r:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value.toLower(_r);
    @:keep
    @:tdfield
    public dynamic function toTitle(_r:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value.toTitle(_r);
    @:keep
    @:tdfield
    public dynamic function toUpper(_r:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value.toUpper(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.unicode.Unicode_specialcasepointer.SpecialCasePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
