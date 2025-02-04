package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415_static_extension.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
    @:tag("`json:\",string\"`")
    public var q : stdgo.GoInt64 = 0;
    public function new(?q:stdgo.GoInt64) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(q);
    }
}
