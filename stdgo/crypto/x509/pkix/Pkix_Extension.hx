package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.Extension_static_extension) abstract Extension(stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension) from stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension to stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension {
    public var id(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_id():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.id;
    function set_id(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.id = v;
        return v;
    }
    public var critical(get, set) : Bool;
    function get_critical():Bool return this.critical;
    function set_critical(v:Bool):Bool {
        this.critical = v;
        return v;
    }
    public var value(get, set) : Array<std.UInt>;
    function get_value():Array<std.UInt> return [for (i in this.value) i];
    function set_value(v:Array<std.UInt>):Array<std.UInt> {
        this.value = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?critical:Bool, ?value:Array<std.UInt>) this = new stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension(id, critical, ([for (i in value) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
