package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_certificate_static_extension.Certificate_static_extension) class Certificate {
    public var certificate : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var privateKey : stdgo._internal.crypto.Crypto_privatekey.PrivateKey = (null : stdgo._internal.crypto.Crypto_privatekey.PrivateKey);
    public var supportedSignatureAlgorithms : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var oCSPStaple : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signedCertificateTimestamps : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var leaf : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
    public function new(?certificate:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?privateKey:stdgo._internal.crypto.Crypto_privatekey.PrivateKey, ?supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?oCSPStaple:stdgo.Slice<stdgo.GoUInt8>, ?signedCertificateTimestamps:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?leaf:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>) {
        if (certificate != null) this.certificate = certificate;
        if (privateKey != null) this.privateKey = privateKey;
        if (supportedSignatureAlgorithms != null) this.supportedSignatureAlgorithms = supportedSignatureAlgorithms;
        if (oCSPStaple != null) this.oCSPStaple = oCSPStaple;
        if (signedCertificateTimestamps != null) this.signedCertificateTimestamps = signedCertificateTimestamps;
        if (leaf != null) this.leaf = leaf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Certificate(certificate, privateKey, supportedSignatureAlgorithms, oCSPStaple, signedCertificateTimestamps, leaf);
    }
}
