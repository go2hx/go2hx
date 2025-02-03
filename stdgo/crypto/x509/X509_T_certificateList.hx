package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_certificateList_static_extension) abstract T_certificateList(stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList) from stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList to stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList {
    public var tBSCertList(get, set) : T_tbsCertificateList;
    function get_tBSCertList():T_tbsCertificateList return this.tBSCertList;
    function set_tBSCertList(v:T_tbsCertificateList):T_tbsCertificateList {
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
    public function new(?tBSCertList:T_tbsCertificateList, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_certificateList.T_certificateList(tBSCertList, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
