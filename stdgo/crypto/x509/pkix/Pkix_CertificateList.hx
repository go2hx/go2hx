package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.CertificateList_static_extension) abstract CertificateList(stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList) from stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList to stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList {
    public var tBSCertList(get, set) : TBSCertificateList;
    function get_tBSCertList():TBSCertificateList return this.tBSCertList;
    function set_tBSCertList(v:TBSCertificateList):TBSCertificateList {
        this.tBSCertList = v;
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
    public function new(?tBSCertList:TBSCertificateList, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.pkix.Pkix_CertificateList.CertificateList(tBSCertList, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
