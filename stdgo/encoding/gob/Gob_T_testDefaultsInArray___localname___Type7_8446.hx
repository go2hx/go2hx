package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testDefaultsInArray___localname___Type7_8446_static_extension) abstract T_testDefaultsInArray___localname___Type7_8446(stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446) from stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446 to stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446 {
    public var b(get, set) : Array<Bool>;
    function get_b():Array<Bool> return [for (i in this.b) i];
    function set_b(v:Array<Bool>):Array<Bool> {
        this.b = ([for (i in v) i] : stdgo.Slice<Bool>);
        return v;
    }
    public var i(get, set) : Array<StdTypes.Int>;
    function get_i():Array<StdTypes.Int> return [for (i in this.i) i];
    function set_i(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.i = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var s(get, set) : Array<String>;
    function get_s():Array<String> return [for (i in this.s) i];
    function set_s(v:Array<String>):Array<String> {
        this.s = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var f(get, set) : Array<StdTypes.Float>;
    function get_f():Array<StdTypes.Float> return [for (i in this.f) i];
    function set_f(v:Array<StdTypes.Float>):Array<StdTypes.Float> {
        this.f = ([for (i in v) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return v;
    }
    public function new(?b:Array<Bool>, ?i:Array<StdTypes.Int>, ?s:Array<String>, ?f:Array<StdTypes.Float>) this = new stdgo._internal.encoding.gob.Gob_T_testDefaultsInArray___localname___Type7_8446.T_testDefaultsInArray___localname___Type7_8446(([for (i in b) i] : stdgo.Slice<Bool>), ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), ([for (i in s) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in f) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
