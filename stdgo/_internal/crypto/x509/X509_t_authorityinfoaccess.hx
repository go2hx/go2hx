package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_authorityinfoaccess_static_extension.T_authorityInfoAccess_static_extension) class T_authorityInfoAccess {
    public var method : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    public var location : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue = ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue);
    public function new(?method:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?location:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) {
        if (method != null) this.method = method;
        if (location != null) this.location = location;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_authorityInfoAccess(method, location);
    }
}
