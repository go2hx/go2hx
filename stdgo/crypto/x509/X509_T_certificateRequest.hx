package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_certificateRequest_static_extension) abstract T_certificateRequest(stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest) from stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest to stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var tBSCSR(get, set) : T_tbsCertificateRequest;
    function get_tBSCSR():T_tbsCertificateRequest return this.tBSCSR;
    function set_tBSCSR(v:T_tbsCertificateRequest):T_tbsCertificateRequest {
        this.tBSCSR = v;
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
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?tBSCSR:T_tbsCertificateRequest, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest(raw, tBSCSR, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
