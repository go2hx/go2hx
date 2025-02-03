package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testDecodeErrorMultipleTypes___localname___Test_26917_static_extension) abstract T_testDecodeErrorMultipleTypes___localname___Test_26917(stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917) from stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 to stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:String, ?b:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_testDecodeErrorMultipleTypes___localname___Test_26917.T_testDecodeErrorMultipleTypes___localname___Test_26917((a : stdgo.GoString), (b : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
