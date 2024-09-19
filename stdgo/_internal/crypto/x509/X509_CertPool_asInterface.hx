package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
class CertPool_asInterface {
    @:keep
    public dynamic function equal(_other:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):Bool return __self__.value.equal(_other);
    @:keep
    public dynamic function subjects():stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return __self__.value.subjects();
    @:keep
    public dynamic function appendCertsFromPEM(_pemCerts:stdgo.Slice<stdgo.GoUInt8>):Bool return __self__.value.appendCertsFromPEM(_pemCerts);
    @:keep
    public dynamic function _addCertFunc(_rawSum224:stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, _rawSubject:stdgo.GoString, _getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):Void __self__.value._addCertFunc(_rawSum224, _rawSubject, _getCert);
    @:keep
    public dynamic function addCert(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Void __self__.value.addCert(_cert);
    @:keep
    public dynamic function _contains(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool return __self__.value._contains(_cert);
    @:keep
    public dynamic function _findPotentialParents(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> return __self__.value._findPotentialParents(_cert);
    @:keep
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool> return __self__.value.clone();
    @:keep
    public dynamic function _cert(_n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } return __self__.value._cert(_n);
    @:keep
    public dynamic function _len():stdgo.GoInt return __self__.value._len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.x509.X509_CertPool.CertPool>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
