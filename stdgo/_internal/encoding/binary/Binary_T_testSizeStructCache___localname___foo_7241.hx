package stdgo._internal.encoding.binary;
@:structInit class T_testSizeStructCache___localname___foo_7241 {
    public var a : stdgo.GoUInt32 = 0;
    public function new(?a:stdgo.GoUInt32) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache___localname___foo_7241(a);
    }
}
