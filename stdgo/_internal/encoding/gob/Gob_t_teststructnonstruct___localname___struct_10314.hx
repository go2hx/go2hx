package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10314_static_extension.T_testStructNonStruct___localname___Struct_10314_static_extension) class T_testStructNonStruct___localname___Struct_10314 {
    public var a : stdgo.GoString = "";
    public function new(?a:stdgo.GoString) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructNonStruct___localname___Struct_10314(a);
    }
}
