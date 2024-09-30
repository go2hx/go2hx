package stdgo._internal.crypto.x509;
@:structInit class T__parseCSRExtensions___localname___pkcs10Attribute_63210 {
    public var id : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    @:tag("`asn1:\"set\"`")
    public var values : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?values:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) {
        if (id != null) this.id = id;
        if (values != null) this.values = values;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__parseCSRExtensions___localname___pkcs10Attribute_63210(id, values);
    }
}
