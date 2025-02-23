package stdgo._internal.crypto.tls;
class T_certificateRequestMsgTLS13_asInterface {
    @:keep
    @:tdfield
    public dynamic function _unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value._unmarshal(_data);
    @:keep
    @:tdfield
    public dynamic function _marshal():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._marshal();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13pointer.T_certificateRequestMsgTLS13Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
