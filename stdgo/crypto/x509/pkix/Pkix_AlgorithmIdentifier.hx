package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier_static_extension) abstract AlgorithmIdentifier(stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier) from stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier to stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier {
    public var algorithm(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_algorithm():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.algorithm;
    function set_algorithm(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.algorithm = v;
        return v;
    }
    public var parameters(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_parameters():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.parameters;
    function set_parameters(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.parameters = v;
        return v;
    }
    public function new(?algorithm:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?parameters:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) this = new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier(algorithm, parameters);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
