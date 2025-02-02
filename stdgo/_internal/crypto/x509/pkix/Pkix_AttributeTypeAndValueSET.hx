package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET_static_extension.AttributeTypeAndValueSET_static_extension) class AttributeTypeAndValueSET {
    public var type : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    @:tag("`asn1:\"set\"`")
    public var value : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>> = (null : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>>);
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?value:stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>>) {
        if (type != null) this.type = type;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AttributeTypeAndValueSET(type, value);
    }
}
