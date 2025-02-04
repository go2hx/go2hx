package stdgo._internal.encoding.json;
class Number_asInterface {
    @:keep
    @:tdfield
    public dynamic function int64():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.int64();
    @:keep
    @:tdfield
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } return @:_0 __self__.value.float64();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_numberpointer.NumberPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
