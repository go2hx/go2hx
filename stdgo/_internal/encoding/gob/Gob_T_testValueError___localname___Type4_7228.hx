package stdgo._internal.encoding.gob;
@:structInit class T_testValueError___localname___Type4_7228 {
    public var a : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testValueError___localname___Type4_7228(a);
    }
}
