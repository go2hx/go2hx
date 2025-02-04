package stdgo._internal.crypto.tls;
class CertificateRequestInfo_asInterface {
    @:keep
    @:tdfield
    public dynamic function supportsCertificate(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):stdgo.Error return @:_0 __self__.value.supportsCertificate(_c);
    @:keep
    @:tdfield
    public dynamic function context():stdgo._internal.context.Context_context.Context return @:_0 __self__.value.context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_certificaterequestinfopointer.CertificateRequestInfoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
