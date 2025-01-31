package stdgo._internal.crypto.x509.pkix;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue_static_extension.AttributeTypeAndValue_static_extension) class AttributeTypeAndValue {
    public var type : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    public var value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?value:stdgo.AnyInterface) {
        if (type != null) this.type = type;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AttributeTypeAndValue(type, value);
    }
}
