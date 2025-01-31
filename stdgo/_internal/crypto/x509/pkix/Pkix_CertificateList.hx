package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_CertificateList_static_extension.CertificateList_static_extension) class CertificateList {
    public var tBSCertList : stdgo._internal.crypto.x509.pkix.Pkix_TBSCertificateList.TBSCertificateList = ({} : stdgo._internal.crypto.x509.pkix.Pkix_TBSCertificateList.TBSCertificateList);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    public function new(?tBSCertList:stdgo._internal.crypto.x509.pkix.Pkix_TBSCertificateList.TBSCertificateList, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) {
        if (tBSCertList != null) this.tBSCertList = tBSCertList;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertificateList(tBSCertList, signatureAlgorithm, signatureValue);
    }
}
