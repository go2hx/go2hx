package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testStructNonStruct___localname___Struct_10305_static_extension) abstract T_testStructNonStruct___localname___Struct_10305(stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305) from stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305 to stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:String) this = new stdgo._internal.encoding.gob.Gob_T_testStructNonStruct___localname___Struct_10305.T_testStructNonStruct___localname___Struct_10305((a : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
