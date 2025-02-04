package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390_static_extension.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390_static_extension) class T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
    public var q : stdgo.GoInt = 0;
    public function new(?q:stdgo.GoInt) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(q);
    }
}
