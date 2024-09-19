package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_authorityInfoAccess {
    public var method : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    public var location : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue);
    public function new(?method:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?location:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) {
        if (method != null) this.method = method;
        if (location != null) this.location = location;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_authorityInfoAccess(method, location);
    }
}
