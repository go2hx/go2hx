package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_certificate_static_extension) abstract T_certificate(stdgo._internal.crypto.x509.X509_T_certificate.T_certificate) from stdgo._internal.crypto.x509.X509_T_certificate.T_certificate to stdgo._internal.crypto.x509.X509_T_certificate.T_certificate {
    public var tBSCertificate(get, set) : T_tbsCertificate;
    function get_tBSCertificate():T_tbsCertificate return this.tBSCertificate;
    function set_tBSCertificate(v:T_tbsCertificate):T_tbsCertificate {
        this.tBSCertificate = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?tBSCertificate:T_tbsCertificate, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_certificate.T_certificate(tBSCertificate, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
