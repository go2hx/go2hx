package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testSlice___localname___Type3_7005_static_extension) abstract T_testSlice___localname___Type3_7005(stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005) from stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005 to stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005 {
    public var a(get, set) : Array<String>;
    function get_a():Array<String> return [for (i in this.a) i];
    function set_a(v:Array<String>):Array<String> {
        this.a = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?a:Array<String>) this = new stdgo._internal.encoding.gob.Gob_T_testSlice___localname___Type3_7005.T_testSlice___localname___Type3_7005(([for (i in a) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
