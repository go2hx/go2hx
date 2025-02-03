package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.TestStruct_static_extension) abstract TestStruct(stdgo._internal.testing.quick.Quick_TestStruct.TestStruct) from stdgo._internal.testing.quick.Quick_TestStruct.TestStruct to stdgo._internal.testing.quick.Quick_TestStruct.TestStruct {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:String) this = new stdgo._internal.testing.quick.Quick_TestStruct.TestStruct((a : stdgo.GoInt), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
