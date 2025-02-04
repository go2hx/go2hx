package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259_static_extension.T_testNullString___localname___T_41259_static_extension) class T_testNullString___localname___T_41259 {
    @:tag("`json:\",string\"`")
    public var a : stdgo.GoInt = 0;
    @:tag("`json:\",string\"`")
    public var b : stdgo.GoInt = 0;
    @:tag("`json:\",string\"`")
    public var c : stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoInt, ?c:stdgo.Pointer<stdgo.GoInt>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNullString___localname___T_41259(a, b, c);
    }
}
