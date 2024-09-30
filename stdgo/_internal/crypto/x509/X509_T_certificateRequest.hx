package stdgo._internal.crypto.x509;
@:structInit class T_certificateRequest {
    public var raw : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent = new stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent(0, 0);
    public var tbscsr : stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest = ({} : stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?tbscsr:stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) {
        if (raw != null) this.raw = raw;
        if (tbscsr != null) this.tbscsr = tbscsr;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateRequest(raw, tbscsr, signatureAlgorithm, signatureValue);
    }
}
