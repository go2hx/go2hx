package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_authorityInfoAccess_static_extension) abstract T_authorityInfoAccess(stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess) from stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess to stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess {
    public var method(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_method():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.method;
    function set_method(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.method = v;
        return v;
    }
    public var location(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_location():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.location;
    function set_location(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.location = v;
        return v;
    }
    public function new(?method:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?location:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) this = new stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess(method, location);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
