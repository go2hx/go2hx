package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_publickeyinfo_static_extension.T_publicKeyInfo_static_extension) class T_publicKeyInfo {
    public var raw : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent = (new stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent(0, 0) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent);
    public var algorithm : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var publicKey : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?algorithm:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (raw != null) this.raw = raw;
        if (algorithm != null) this.algorithm = algorithm;
        if (publicKey != null) this.publicKey = publicKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_publicKeyInfo(raw, algorithm, publicKey);
    }
}
