package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_publicKeyInfo_static_extension) abstract T_publicKeyInfo(stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo) from stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo to stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var algorithm(get, set) : AlgorithmIdentifier;
    function get_algorithm():AlgorithmIdentifier return this.algorithm;
    function set_algorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.algorithm = v;
        return v;
    }
    public var publicKey(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_publicKey():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.publicKey;
    function set_publicKey(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.publicKey = v;
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?algorithm:AlgorithmIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_publicKeyInfo.T_publicKeyInfo(raw, algorithm, publicKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
