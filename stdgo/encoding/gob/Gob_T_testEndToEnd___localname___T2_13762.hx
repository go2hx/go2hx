package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testEndToEnd___localname___T2_13762_static_extension) abstract T_testEndToEnd___localname___T2_13762(stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762) from stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762 to stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762 {
    public var t(get, set) : String;
    function get_t():String return this.t;
    function set_t(v:String):String {
        this.t = (v : stdgo.GoString);
        return v;
    }
    public function new(?t:String) this = new stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T2_13762.T_testEndToEnd___localname___T2_13762((t : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
