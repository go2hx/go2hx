package stdgo._internal.encoding.json;
@:structInit class T_testIssue10281___localname___Foo_15026 {
    public var n : stdgo._internal.encoding.json.Json_Number.Number = (("" : stdgo.GoString) : stdgo._internal.encoding.json.Json_Number.Number);
    public function new(?n:stdgo._internal.encoding.json.Json_Number.Number) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue10281___localname___Foo_15026(n);
    }
}
