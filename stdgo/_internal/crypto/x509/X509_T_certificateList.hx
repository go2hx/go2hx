package stdgo._internal.crypto.x509;
@:structInit class T_certificateList {
    public var tBSCertList : stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList = ({} : stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    public function new(?tBSCertList:stdgo._internal.crypto.x509.X509_T_tbsCertificateList.T_tbsCertificateList, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) {
        if (tBSCertList != null) this.tBSCertList = tBSCertList;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateList(tBSCertList, signatureAlgorithm, signatureValue);
    }
}
