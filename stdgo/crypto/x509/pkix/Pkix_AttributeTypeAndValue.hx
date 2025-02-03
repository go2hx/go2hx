package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue_static_extension) abstract AttributeTypeAndValue(stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue) from stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue to stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue {
    public var type(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_type():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.type;
    function set_type(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.type = v;
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?value:stdgo.AnyInterface) this = new stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue(type, (value : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
