package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_policyInformation {
    public var policy : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    public function new(?policy:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier) {
        if (policy != null) this.policy = policy;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_policyInformation(policy);
    }
}
