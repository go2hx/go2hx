package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_policyInformation_static_extension) abstract T_policyInformation(stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation) from stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation to stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation {
    public var policy(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_policy():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.policy;
    function set_policy(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.policy = v;
        return v;
    }
    public function new(?policy:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier) this = new stdgo._internal.crypto.x509.X509_T_policyInformation.T_policyInformation(policy);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
