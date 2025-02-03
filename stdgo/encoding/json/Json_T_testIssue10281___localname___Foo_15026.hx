package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testIssue10281___localname___Foo_15026_static_extension) abstract T_testIssue10281___localname___Foo_15026(stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026) from stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026 to stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026 {
    public var n(get, set) : Number;
    function get_n():Number return this.n;
    function set_n(v:Number):Number {
        this.n = v;
        return v;
    }
    public function new(?n:Number) this = new stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
