package stdgo._internal.encoding.json;
class RefText_asInterface {
    @:keep
    @:pointer
    @:tdfield
    public dynamic function unmarshalText(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.unmarshalText(_0);
    @:keep
    @:pointer
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_reftextpointer.RefTextPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
