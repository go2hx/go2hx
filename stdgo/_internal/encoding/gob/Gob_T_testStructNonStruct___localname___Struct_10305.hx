package stdgo._internal.encoding.gob;
@:structInit class T_testStructNonStruct___localname___Struct_10305 {
    public var a : stdgo.GoString = "";
    public function new(?a:stdgo.GoString) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructNonStruct___localname___Struct_10305(a);
    }
}
