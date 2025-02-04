package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_certificaterequestinfo_static_extension.CertificateRequestInfo_static_extension) class CertificateRequestInfo {
    public var acceptableCAs : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var signatureSchemes : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var version : stdgo.GoUInt16 = 0;
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?acceptableCAs:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?signatureSchemes:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?version:stdgo.GoUInt16, ?_ctx:stdgo._internal.context.Context_context.Context) {
        if (acceptableCAs != null) this.acceptableCAs = acceptableCAs;
        if (signatureSchemes != null) this.signatureSchemes = signatureSchemes;
        if (version != null) this.version = version;
        if (_ctx != null) this._ctx = _ctx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateRequestInfo(acceptableCAs, signatureSchemes, version, _ctx);
    }
}
