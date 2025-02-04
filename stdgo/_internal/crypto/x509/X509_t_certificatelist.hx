package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_certificatelist_static_extension.T_certificateList_static_extension) class T_certificateList {
    public var tBSCertList : stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList = ({} : stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?tBSCertList:stdgo._internal.crypto.x509.X509_t_tbscertificatelist.T_tbsCertificateList, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (tBSCertList != null) this.tBSCertList = tBSCertList;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateList(tBSCertList, signatureAlgorithm, signatureValue);
    }
}
