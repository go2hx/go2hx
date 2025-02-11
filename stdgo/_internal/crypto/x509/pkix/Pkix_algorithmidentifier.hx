package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier_static_extension.AlgorithmIdentifier_static_extension) class AlgorithmIdentifier {
    public var algorithm : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"optional\"`")
    public var parameters : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
    public function new(?algorithm:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?parameters:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) {
        if (algorithm != null) this.algorithm = algorithm;
        if (parameters != null) this.parameters = parameters;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AlgorithmIdentifier(algorithm, parameters);
    }
}
