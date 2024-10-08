package stdgo._internal.crypto.x509.pkix;
@:structInit class AlgorithmIdentifier {
    public var algorithm : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    @:tag("`asn1:\"optional\"`")
    public var parameters : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
    public function new(?algorithm:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?parameters:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) {
        if (algorithm != null) this.algorithm = algorithm;
        if (parameters != null) this.parameters = parameters;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AlgorithmIdentifier(algorithm, parameters);
    }
}
