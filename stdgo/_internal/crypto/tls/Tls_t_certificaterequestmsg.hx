package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certificaterequestmsg_static_extension.T_certificateRequestMsg_static_extension) class T_certificateRequestMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _hasSignatureAlgorithm : Bool = false;
    public var _certificateTypes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _supportedSignatureAlgorithms : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _certificateAuthorities : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_hasSignatureAlgorithm:Bool, ?_certificateTypes:stdgo.Slice<stdgo.GoUInt8>, ?_supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_certificateAuthorities:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>) {
        if (_raw != null) this._raw = _raw;
        if (_hasSignatureAlgorithm != null) this._hasSignatureAlgorithm = _hasSignatureAlgorithm;
        if (_certificateTypes != null) this._certificateTypes = _certificateTypes;
        if (_supportedSignatureAlgorithms != null) this._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
        if (_certificateAuthorities != null) this._certificateAuthorities = _certificateAuthorities;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateRequestMsg(_raw, _hasSignatureAlgorithm, _certificateTypes, _supportedSignatureAlgorithms, _certificateAuthorities);
    }
}
