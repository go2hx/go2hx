package stdgo._internal.encoding.json;
class MustNotUnmarshalJSON_asInterface {
    @:keep
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalJSON(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
