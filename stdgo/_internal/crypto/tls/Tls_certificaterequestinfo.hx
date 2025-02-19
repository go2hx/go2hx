package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_certificaterequestinfo_static_extension.CertificateRequestInfo_static_extension) class CertificateRequestInfo {
    public var acceptableCAs : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var signatureSchemes : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var version : stdgo.GoUInt16 = 0;
    public function new(?acceptableCAs:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?signatureSchemes:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?version:stdgo.GoUInt16) {
        if (acceptableCAs != null) this.acceptableCAs = acceptableCAs;
        if (signatureSchemes != null) this.signatureSchemes = signatureSchemes;
        if (version != null) this.version = version;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateRequestInfo(acceptableCAs, signatureSchemes, version);
    }
}
