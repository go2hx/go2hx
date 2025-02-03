package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET_static_extension) abstract AttributeTypeAndValueSET(stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET) from stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET to stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET {
    public var type(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_type():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.type;
    function set_type(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.type = v;
        return v;
    }
    public var value(get, set) : Array<Array<AttributeTypeAndValue>>;
    function get_value():Array<Array<AttributeTypeAndValue>> return [for (i in this.value) [for (i in i) i]];
    function set_value(v:Array<Array<AttributeTypeAndValue>>):Array<Array<AttributeTypeAndValue>> {
        this.value = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>>);
        return v;
    }
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?value:Array<Array<AttributeTypeAndValue>>) this = new stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET(type, ([for (i in value) ([for (i in i) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
