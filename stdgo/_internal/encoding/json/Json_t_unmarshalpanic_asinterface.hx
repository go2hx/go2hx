package stdgo._internal.encoding.json;
class T_unmarshalPanic_asInterface {
    @:keep
    @:tdfield
    public dynamic function unmarshalJSON(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalJSON(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_t_unmarshalpanicpointer.T_unmarshalPanicPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
