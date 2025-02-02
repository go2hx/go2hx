package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_pkixPublicKey_static_extension.T_pkixPublicKey_static_extension) class T_pkixPublicKey {
    public var algo : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
    public var bitString : stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
    public function new(?algo:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier, ?bitString:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) {
        if (algo != null) this.algo = algo;
        if (bitString != null) this.bitString = bitString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkixPublicKey(algo, bitString);
    }
}
