package stdgo._internal.encoding.gob;
@:structInit class T_testPtrTypeToType___localname___Type1_6414 {
    public var a : stdgo.GoUInt = 0;
    public function new(?a:stdgo.GoUInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testPtrTypeToType___localname___Type1_6414(a);
    }
}
