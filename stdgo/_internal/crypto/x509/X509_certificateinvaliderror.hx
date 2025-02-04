package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_certificateinvaliderror_static_extension.CertificateInvalidError_static_extension) class CertificateInvalidError {
    public var cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
    public var reason : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason);
    public var detail : stdgo.GoString = "";
    public function new(?cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, ?reason:stdgo._internal.crypto.x509.X509_invalidreason.InvalidReason, ?detail:stdgo.GoString) {
        if (cert != null) this.cert = cert;
        if (reason != null) this.reason = reason;
        if (detail != null) this.detail = detail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateInvalidError(cert, reason, detail);
    }
}
