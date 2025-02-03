package stdgo.encoding.asn1;
@:structInit @:using(stdgo.encoding.asn1.Asn1.BitString_static_extension) abstract BitString(stdgo._internal.encoding.asn1.Asn1_BitString.BitString) from stdgo._internal.encoding.asn1.Asn1_BitString.BitString to stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
    public var bytes(get, set) : Array<std.UInt>;
    function get_bytes():Array<std.UInt> return [for (i in this.bytes) i];
    function set_bytes(v:Array<std.UInt>):Array<std.UInt> {
        this.bytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var bitLength(get, set) : StdTypes.Int;
    function get_bitLength():StdTypes.Int return this.bitLength;
    function set_bitLength(v:StdTypes.Int):StdTypes.Int {
        this.bitLength = (v : stdgo.GoInt);
        return v;
    }
    public function new(?bytes:Array<std.UInt>, ?bitLength:StdTypes.Int) this = new stdgo._internal.encoding.asn1.Asn1_BitString.BitString(([for (i in bytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (bitLength : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
