package _internal.encoding.gob_test;
class Vector_asInterface {
    @:keep
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalBinary(_data);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.encoding.gob_test.Gob_test_Vector.Vector>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
