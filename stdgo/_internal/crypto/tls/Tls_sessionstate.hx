package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_sessionstate_static_extension.SessionState_static_extension) class SessionState {
    public var extra : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var earlyData : Bool = false;
    public var _version : stdgo.GoUInt16 = 0;
    public var _isClient : Bool = false;
    public var _cipherSuite : stdgo.GoUInt16 = 0;
    public var _createdAt : stdgo.GoUInt64 = 0;
    public var _secret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _extMasterSecret : Bool = false;
    public var _peerCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
    public var _activeCertHandles : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
    public var _ocspResponse : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _scts : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _verifiedChains : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
    public var _alpnProtocol : stdgo.GoString = "";
    public var _useBy : stdgo.GoUInt64 = 0;
    public var _ageAdd : stdgo.GoUInt32 = 0;
    public function new(?extra:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?earlyData:Bool, ?_version:stdgo.GoUInt16, ?_isClient:Bool, ?_cipherSuite:stdgo.GoUInt16, ?_createdAt:stdgo.GoUInt64, ?_secret:stdgo.Slice<stdgo.GoUInt8>, ?_extMasterSecret:Bool, ?_peerCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, ?_activeCertHandles:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>, ?_ocspResponse:stdgo.Slice<stdgo.GoUInt8>, ?_scts:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_verifiedChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>, ?_alpnProtocol:stdgo.GoString, ?_useBy:stdgo.GoUInt64, ?_ageAdd:stdgo.GoUInt32) {
        if (extra != null) this.extra = extra;
        if (earlyData != null) this.earlyData = earlyData;
        if (_version != null) this._version = _version;
        if (_isClient != null) this._isClient = _isClient;
        if (_cipherSuite != null) this._cipherSuite = _cipherSuite;
        if (_createdAt != null) this._createdAt = _createdAt;
        if (_secret != null) this._secret = _secret;
        if (_extMasterSecret != null) this._extMasterSecret = _extMasterSecret;
        if (_peerCertificates != null) this._peerCertificates = _peerCertificates;
        if (_activeCertHandles != null) this._activeCertHandles = _activeCertHandles;
        if (_ocspResponse != null) this._ocspResponse = _ocspResponse;
        if (_scts != null) this._scts = _scts;
        if (_verifiedChains != null) this._verifiedChains = _verifiedChains;
        if (_alpnProtocol != null) this._alpnProtocol = _alpnProtocol;
        if (_useBy != null) this._useBy = _useBy;
        if (_ageAdd != null) this._ageAdd = _ageAdd;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SessionState(
extra,
earlyData,
_version,
_isClient,
_cipherSuite,
_createdAt,
_secret,
_extMasterSecret,
_peerCertificates,
_activeCertHandles,
_ocspResponse,
_scts,
_verifiedChains,
_alpnProtocol,
_useBy,
_ageAdd);
    }
}
