package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275_static_extension) abstract T_testSizeStructCache___localname___bar_7275(stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275) from stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275 to stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275 {
    public var a(get, set) : Struct;
    function get_a():Struct return this.a;
    function set_a(v:Struct):Struct {
        this.a = v;
        return v;
    }
    public var b(get, set) : T_testSizeStructCache___localname___foo_7241;
    function get_b():T_testSizeStructCache___localname___foo_7241 return this.b;
    function set_b(v:T_testSizeStructCache___localname___foo_7241):T_testSizeStructCache___localname___foo_7241 {
        this.b = v;
        return v;
    }
    public var c(get, set) : Struct;
    function get_c():Struct return this.c;
    function set_c(v:Struct):Struct {
        this.c = v;
        return v;
    }
    public function new(?a:Struct, ?b:T_testSizeStructCache___localname___foo_7241, ?c:Struct) this = new stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___bar_7275.T_testSizeStructCache___localname___bar_7275(a, b, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
