package stdgo._internal.crypto.tls;
class ClientHelloInfo_asInterface {
    @:keep
    public dynamic function supportsCertificate(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):stdgo.Error return __self__.value.supportsCertificate(_c);
    @:keep
    public dynamic function context():stdgo._internal.context.Context_Context.Context return __self__.value.context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
