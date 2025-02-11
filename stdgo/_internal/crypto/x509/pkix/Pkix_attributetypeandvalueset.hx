package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset_static_extension.AttributeTypeAndValueSET_static_extension) class AttributeTypeAndValueSET {
    public var type : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"set\"`")
    public var value : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>> = (null : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>);
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?value:stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>) {
        if (type != null) this.type = type;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AttributeTypeAndValueSET(type, value);
    }
}
