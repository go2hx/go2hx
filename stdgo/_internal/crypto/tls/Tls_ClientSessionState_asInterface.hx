package stdgo._internal.crypto.tls;
class ClientSessionState_asInterface {
    @:keep
    public dynamic function resumptionState():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _2 : stdgo.Error; } return __self__.value.resumptionState();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
