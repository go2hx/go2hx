package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certificateverifymsg_static_extension.T_certificateVerifyMsg_static_extension) class T_certificateVerifyMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _hasSignatureAlgorithm : Bool = false;
    public var _signatureAlgorithm : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme);
    public var _signature : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_hasSignatureAlgorithm:Bool, ?_signatureAlgorithm:stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme, ?_signature:stdgo.Slice<stdgo.GoUInt8>) {
        if (_raw != null) this._raw = _raw;
        if (_hasSignatureAlgorithm != null) this._hasSignatureAlgorithm = _hasSignatureAlgorithm;
        if (_signatureAlgorithm != null) this._signatureAlgorithm = _signatureAlgorithm;
        if (_signature != null) this._signature = _signature;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateVerifyMsg(_raw, _hasSignatureAlgorithm, _signatureAlgorithm, _signature);
    }
}
