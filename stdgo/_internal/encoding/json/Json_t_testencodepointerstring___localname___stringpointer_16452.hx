package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452_static_extension.T_testEncodePointerString___localname___stringPointer_16452_static_extension) class T_testEncodePointerString___localname___stringPointer_16452 {
    @:tag("`json:\"n,string\"`")
    public var n : stdgo.Pointer<stdgo.GoInt64> = (null : stdgo.Pointer<stdgo.GoInt64>);
    public function new(?n:stdgo.Pointer<stdgo.GoInt64>) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncodePointerString___localname___stringPointer_16452(n);
    }
}
