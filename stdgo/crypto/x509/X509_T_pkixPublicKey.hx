package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_pkixPublicKey_static_extension) abstract T_pkixPublicKey(stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey) from stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey to stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey {
    public var algo(get, set) : AlgorithmIdentifier;
    function get_algo():AlgorithmIdentifier return this.algo;
    function set_algo(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.algo = v;
        return v;
    }
    public var bitString(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_bitString():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.bitString;
    function set_bitString(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.bitString = v;
        return v;
    }
    public function new(?algo:AlgorithmIdentifier, ?bitString:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey(algo, bitString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
