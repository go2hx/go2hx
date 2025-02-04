package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testissue10281___localname___foo_15026_static_extension.T_testIssue10281___localname___Foo_15026_static_extension) class T_testIssue10281___localname___Foo_15026 {
    public var n : stdgo._internal.encoding.json.Json_number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_number.Number);
    public function new(?n:stdgo._internal.encoding.json.Json_number.Number) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue10281___localname___Foo_15026(n);
    }
}
