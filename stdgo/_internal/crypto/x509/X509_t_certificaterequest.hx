package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_certificaterequest_static_extension.T_certificateRequest_static_extension) class T_certificateRequest {
    public var raw : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent = (new stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent(0, 0) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent);
    public var tBSCSR : stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest = ({} : stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest);
    public var signatureAlgorithm : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var signatureValue : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?tBSCSR:stdgo._internal.crypto.x509.X509_t_tbscertificaterequest.T_tbsCertificateRequest, ?signatureAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (raw != null) this.raw = raw;
        if (tBSCSR != null) this.tBSCSR = tBSCSR;
        if (signatureAlgorithm != null) this.signatureAlgorithm = signatureAlgorithm;
        if (signatureValue != null) this.signatureValue = signatureValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateRequest(raw, tBSCSR, signatureAlgorithm, signatureValue);
    }
}
