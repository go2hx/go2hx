package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceByte_static_extension) abstract LargeSliceByte(stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte) from stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte to stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte {
    public var s(get, set) : Array<std.UInt>;
    function get_s():Array<std.UInt> return [for (i in this.s) i];
    function set_s(v:Array<std.UInt>):Array<std.UInt> {
        this.s = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?s:Array<std.UInt>) this = new stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte(([for (i in s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
