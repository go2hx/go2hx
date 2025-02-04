package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_teststructnonstruct___localname___struct_10305_static_extension.T_testStructNonStruct___localname___Struct_10305_static_extension) class T_testStructNonStruct___localname___Struct_10305 {
    public var a : stdgo.GoString = "";
    public function new(?a:stdgo.GoString) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStructNonStruct___localname___Struct_10305(a);
    }
}
