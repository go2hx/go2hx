package stdgo._internal.crypto.x509.pkix;
@:structInit class Extension {
    public var id : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
    @:tag("`asn1:\"optional\"`")
    public var critical : Bool = false;
    public var value : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?critical:Bool, ?value:stdgo.Slice<stdgo.GoUInt8>) {
        if (id != null) this.id = id;
        if (critical != null) this.critical = critical;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Extension(id, critical, value);
    }
}
