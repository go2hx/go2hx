package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceInt8_static_extension) abstract LargeSliceInt8(stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8) from stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8 to stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8 {
    public var s(get, set) : Array<StdTypes.Int>;
    function get_s():Array<StdTypes.Int> return [for (i in this.s) i];
    function set_s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.s = ([for (i in v) (i : stdgo.GoInt8)] : stdgo.Slice<stdgo.GoInt8>);
        return v;
    }
    public function new(?s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8(([for (i in s) (i : stdgo.GoInt8)] : stdgo.Slice<stdgo.GoInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
