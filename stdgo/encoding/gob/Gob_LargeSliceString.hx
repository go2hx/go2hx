package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.LargeSliceString_static_extension) abstract LargeSliceString(stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString) from stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString to stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString {
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?s:Array<String>) this = new stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString(([for (i in s) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
