package stdgo._internal.crypto.x509;
class Certificate_asInterface {
    @:keep
    @:tdfield
    public dynamic function createCRL(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>, _now:stdgo._internal.time.Time_time.Time, _expiry:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.createCRL(_rand, _priv, _revokedCerts, _now, _expiry);
    @:keep
    @:tdfield
    public dynamic function checkCRLSignature(_crl:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>):stdgo.Error return @:_0 __self__.value.checkCRLSignature(_crl);
    @:keep
    @:tdfield
    public dynamic function _getSANExtension():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._getSANExtension();
    @:keep
    @:tdfield
    public dynamic function _hasNameConstraints():Bool return @:_0 __self__.value._hasNameConstraints();
    @:keep
    @:tdfield
    public dynamic function checkSignature(_algo:stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.checkSignature(_algo, _signed, _signature);
    @:keep
    @:tdfield
    public dynamic function checkSignatureFrom(_parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error return @:_0 __self__.value.checkSignatureFrom(_parent);
    @:keep
    @:tdfield
    public dynamic function _hasSANExtension():Bool return @:_0 __self__.value._hasSANExtension();
    @:keep
    @:tdfield
    public dynamic function equal(_other:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):Bool return @:_0 __self__.value.equal(_other);
    @:keep
    @:tdfield
    public dynamic function verifyHostname(_h:stdgo.GoString):stdgo.Error return @:_0 __self__.value.verifyHostname(_h);
    @:keep
    @:tdfield
    public dynamic function _buildChains(_currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _sigChecks:stdgo.Pointer<stdgo.GoInt>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } return @:_0 __self__.value._buildChains(_currentChain, _sigChecks, _opts);
    @:keep
    @:tdfield
    public dynamic function verify(_opts:stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } return @:_0 __self__.value.verify(_opts);
    @:keep
    @:tdfield
    public dynamic function _isValid(_certType:stdgo.GoInt, _currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>):stdgo.Error return @:_0 __self__.value._isValid(_certType, _currentChain, _opts);
    @:keep
    @:tdfield
    public dynamic function _checkNameConstraints(_count:stdgo.Pointer<stdgo.GoInt>, _maxConstraintComparisons:stdgo.GoInt, _nameType:stdgo.GoString, _name:stdgo.GoString, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : Bool; var _1 : stdgo.Error; }, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value._checkNameConstraints(_count, _maxConstraintComparisons, _nameType, _name, _parsedName, _match, _permitted, _excluded);
    @:keep
    @:tdfield
    public dynamic function _systemVerify(_opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_verifyoptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>; var _1 : stdgo.Error; } return @:_0 __self__.value._systemVerify(_opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.x509.X509_certificatepointer.CertificatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
