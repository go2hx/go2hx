package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testNullString___localname___T_41259_static_extension) abstract T_testNullString___localname___T_41259(stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259) from stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259 to stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259((a : stdgo.GoInt), (b : stdgo.GoInt), c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
