package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_certificate_static_extension.T_certificate_static_extension) class T_certificate {
    public var tBSCertificate : stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate = ({} : stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?tBSCertificate:stdgo._internal.crypto.x509.X509_t_tbscertificate.T_tbsCertificate, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (tBSCertificate != null) this.tBSCertificate = tBSCertificate;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificate(tBSCertificate, signatureAlgorithm, signatureValue);
    }
}
