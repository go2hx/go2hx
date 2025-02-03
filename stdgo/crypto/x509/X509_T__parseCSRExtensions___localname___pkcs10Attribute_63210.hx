package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T__parseCSRExtensions___localname___pkcs10Attribute_63210_static_extension) abstract T__parseCSRExtensions___localname___pkcs10Attribute_63210(stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210) from stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 to stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210 {
    public var id(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_id():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.id;
    function set_id(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.id = v;
        return v;
    }
    public var values(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>;
    function get_values():Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> return [for (i in this.values) i];
    function set_values(v:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> {
        this.values = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?values:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) this = new stdgo._internal.crypto.x509.X509_T__parseCSRExtensions___localname___pkcs10Attribute_63210.T__parseCSRExtensions___localname___pkcs10Attribute_63210(id, ([for (i in values) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
