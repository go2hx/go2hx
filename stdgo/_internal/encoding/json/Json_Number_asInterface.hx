package stdgo._internal.encoding.json;
class Number_asInterface {
    @:keep
    public dynamic function int64():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.int64();
    @:keep
    public dynamic function float64():{ var _0 : stdgo.GoFloat64; var _1 : stdgo.Error; } return __self__.value.float64();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_Number.Number>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
