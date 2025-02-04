package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13_static_extension.T_certificateRequestMsgTLS13_static_extension) class T_certificateRequestMsgTLS13 {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ocspStapling : Bool = false;
    public var _scts : Bool = false;
    public var _supportedSignatureAlgorithms : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _supportedSignatureAlgorithmsCert : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _certificateAuthorities : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_ocspStapling:Bool, ?_scts:Bool, ?_supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_supportedSignatureAlgorithmsCert:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_certificateAuthorities:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>) {
        if (_raw != null) this._raw = _raw;
        if (_ocspStapling != null) this._ocspStapling = _ocspStapling;
        if (_scts != null) this._scts = _scts;
        if (_supportedSignatureAlgorithms != null) this._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
        if (_supportedSignatureAlgorithmsCert != null) this._supportedSignatureAlgorithmsCert = _supportedSignatureAlgorithmsCert;
        if (_certificateAuthorities != null) this._certificateAuthorities = _certificateAuthorities;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateRequestMsgTLS13(_raw, _ocspStapling, _scts, _supportedSignatureAlgorithms, _supportedSignatureAlgorithmsCert, _certificateAuthorities);
    }
}
