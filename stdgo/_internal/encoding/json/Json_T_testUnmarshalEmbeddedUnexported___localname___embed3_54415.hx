package stdgo._internal.encoding.json;
@:structInit class T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
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
