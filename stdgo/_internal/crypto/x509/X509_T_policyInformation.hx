package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_policyInformation_static_extension.T_policyInformation_static_extension) class T_policyInformation {
    public var policy : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    public function new(?policy:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier) {
        if (policy != null) this.policy = policy;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_policyInformation(policy);
    }
}
