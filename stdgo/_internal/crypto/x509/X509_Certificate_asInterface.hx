package stdgo._internal.crypto.x509;
class Certificate_asInterface {
    @:keep
    public dynamic function createCRL(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.AnyInterface, _revokedCerts:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>, _now:stdgo._internal.time.Time_Time.Time, _expiry:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.createCRL(_rand, _priv, _revokedCerts, _now, _expiry);
    @:keep
    public dynamic function checkCRLSignature(_crl:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList>):stdgo.Error return __self__.value.checkCRLSignature(_crl);
    @:keep
    public dynamic function _getSANExtension():stdgo.Slice<stdgo.GoUInt8> return __self__.value._getSANExtension();
    @:keep
    public dynamic function _hasNameConstraints():Bool return __self__.value._hasNameConstraints();
    @:keep
    public dynamic function checkSignature(_algo:stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm, _signed:stdgo.Slice<stdgo.GoUInt8>, _signature:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.checkSignature(_algo, _signed, _signature);
    @:keep
    public dynamic function checkSignatureFrom(_parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Error return __self__.value.checkSignatureFrom(_parent);
    @:keep
    public dynamic function _hasSANExtension():Bool return __self__.value._hasSANExtension();
    @:keep
    public dynamic function equal(_other:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Bool return __self__.value.equal(_other);
    @:keep
    public dynamic function verifyHostname(_h:stdgo.GoString):stdgo.Error return __self__.value.verifyHostname(_h);
    @:keep
    public dynamic function _buildChains(_currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _sigChecks:stdgo.Pointer<stdgo.GoInt>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } return __self__.value._buildChains(_currentChain, _sigChecks, _opts);
    @:keep
    public dynamic function verify(_opts:stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } return __self__.value.verify(_opts);
    @:keep
    public dynamic function _isValid(_certType:stdgo.GoInt, _currentChain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, _opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>):stdgo.Error return __self__.value._isValid(_certType, _currentChain, _opts);
    @:keep
    public dynamic function _checkNameConstraints(_count:stdgo.Pointer<stdgo.GoInt>, _maxConstraintComparisons:stdgo.GoInt, _nameType:stdgo.GoString, _name:stdgo.GoString, _parsedName:stdgo.AnyInterface, _match:(stdgo.AnyInterface, stdgo.AnyInterface) -> { var _0 : Bool; var _1 : stdgo.Error; }, _permitted:stdgo.AnyInterface, _excluded:stdgo.AnyInterface):stdgo.Error return __self__.value._checkNameConstraints(_count, _maxConstraintComparisons, _nameType, _name, _parsedName, _match, _permitted, _excluded);
    @:keep
    public dynamic function _systemVerify(_opts:stdgo.Ref<stdgo._internal.crypto.x509.X509_VerifyOptions.VerifyOptions>):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>; var _1 : stdgo.Error; } return __self__.value._systemVerify(_opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.x509.X509_Certificate.Certificate>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
