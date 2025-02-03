package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceStruct_static_extension) abstract LargeSliceStruct(stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct) from stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct to stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct {
    public var s(get, set) : Array<StringPair>;
    function get_s():Array<StringPair> return [for (i in this.s) i];
    function set_s(v:Array<StringPair>):Array<StringPair> {
        this.s = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>);
        return v;
    }
    public function new(?s:Array<StringPair>) this = new stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct(([for (i in s) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
