package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_certificateverificationerror_static_extension.CertificateVerificationError_static_extension) class CertificateVerificationError {
    public var unverifiedCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?unverifiedCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, ?err:stdgo.Error) {
        if (unverifiedCertificates != null) this.unverifiedCertificates = unverifiedCertificates;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateVerificationError(unverifiedCertificates, err);
    }
}
