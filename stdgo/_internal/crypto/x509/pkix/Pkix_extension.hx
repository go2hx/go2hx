package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_extension_static_extension.Extension_static_extension) class Extension {
    public var id : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"optional\"`")
    public var critical : Bool = false;
    public var value : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?critical:Bool, ?value:stdgo.Slice<stdgo.GoUInt8>) {
        if (id != null) this.id = id;
        if (critical != null) this.critical = critical;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Extension(id, critical, value);
    }
}
