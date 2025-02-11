package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t__parsecsrextensions___localname___pkcs10attribute_63210_static_extension.T__parseCSRExtensions___localname___pkcs10Attribute_63210_static_extension) class T__parseCSRExtensions___localname___pkcs10Attribute_63210 {
    public var id : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"set\"`")
    public var values : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?values:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) {
        if (id != null) this.id = id;
        if (values != null) this.values = values;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__parseCSRExtensions___localname___pkcs10Attribute_63210(id, values);
    }
}
