package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_pkixpublickey_static_extension.T_pkixPublicKey_static_extension) class T_pkixPublicKey {
    public var algo : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier);
    public var bitString : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?algo:stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier, ?bitString:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (algo != null) this.algo = algo;
        if (bitString != null) this.bitString = bitString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pkixPublicKey(algo, bitString);
    }
}
