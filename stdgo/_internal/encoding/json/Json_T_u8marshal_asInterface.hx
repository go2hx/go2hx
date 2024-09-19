package stdgo._internal.encoding.json;
class T_u8marshal_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(__self__, _b);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_T_u8marshal.T_u8marshal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
