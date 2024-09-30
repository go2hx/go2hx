package stdgo._internal.crypto.x509;
@:structInit class T_publicKeyInfo {
    public var raw : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent = new stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent(0, 0);
    public var algorithm : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var publicKey : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?algorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) {
        if (raw != null) this.raw = raw;
        if (algorithm != null) this.algorithm = algorithm;
        if (publicKey != null) this.publicKey = publicKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_publicKeyInfo(raw, algorithm, publicKey);
    }
}
