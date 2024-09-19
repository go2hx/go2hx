package stdgo._internal.encoding.json;
@:structInit class T_testEncodePointerString___localname___stringPointer_16452 {
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
