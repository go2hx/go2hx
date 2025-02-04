package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_certificatelist_static_extension.CertificateList_static_extension) class CertificateList {
    public var tBSCertList : stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList = ({} : stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?tBSCertList:stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (tBSCertList != null) this.tBSCertList = tBSCertList;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateList(tBSCertList, signatureAlgorithm, signatureValue);
    }
}
