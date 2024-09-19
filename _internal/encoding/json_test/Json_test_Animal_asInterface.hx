package _internal.encoding.json_test;
class Animal_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.encoding.json_test.Json_test_Animal.Animal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
