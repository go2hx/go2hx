package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_certificate_static_extension.T_certificate_static_extension) class T_certificate {
    public var tBSCertificate : stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate = ({} : stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    public function new(?tBSCertificate:stdgo._internal.crypto.x509.X509_T_tbsCertificate.T_tbsCertificate, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) {
        if (tBSCertificate != null) this.tBSCertificate = tBSCertificate;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificate(tBSCertificate, signatureAlgorithm, signatureValue);
    }
}
