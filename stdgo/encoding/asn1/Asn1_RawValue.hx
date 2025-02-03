package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.RawValue_static_extension) abstract RawValue(stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) from stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue to stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
    public var class_(get, set) : StdTypes.Int;
    function get_class_():StdTypes.Int return this.class_;
    function set_class_(v:StdTypes.Int):StdTypes.Int {
        this.class_ = (v : stdgo.GoInt);
        return v;
    }
    public var tag(get, set) : StdTypes.Int;
    function get_tag():StdTypes.Int return this.tag;
    function set_tag(v:StdTypes.Int):StdTypes.Int {
        this.tag = (v : stdgo.GoInt);
        return v;
    }
    public var isCompound(get, set) : Bool;
    function get_isCompound():Bool return this.isCompound;
    function set_isCompound(v:Bool):Bool {
        this.isCompound = v;
        return v;
    }
    public var bytes(get, set) : Array<std.UInt>;
    function get_bytes():Array<std.UInt> return [for (i in this.bytes) i];
    function set_bytes(v:Array<std.UInt>):Array<std.UInt> {
        this.bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var fullBytes(get, set) : Array<std.UInt>;
    function get_fullBytes():Array<std.UInt> return [for (i in this.fullBytes) i];
    function set_fullBytes(v:Array<std.UInt>):Array<std.UInt> {
        this.fullBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?class_:StdTypes.Int, ?tag:StdTypes.Int, ?isCompound:Bool, ?bytes:Array<std.UInt>, ?fullBytes:Array<std.UInt>) this = new stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue((class_ : stdgo.GoInt), (tag : stdgo.GoInt), isCompound, ([for (i in bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in fullBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
