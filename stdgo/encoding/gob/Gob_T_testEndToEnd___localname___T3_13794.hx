package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testEndToEnd___localname___T3_13794_static_extension) abstract T_testEndToEnd___localname___T3_13794(stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794) from stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794 to stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794 {
    public var x(get, set) : StdTypes.Float;
    function get_x():StdTypes.Float return this.x;
    function set_x(v:StdTypes.Float):StdTypes.Float {
        this.x = (v : stdgo.GoFloat64);
        return v;
    }
    public var z(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_z():stdgo.Pointer<StdTypes.Int> return this.z;
    function set_z(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.z = v;
        return v;
    }
    public function new(?x:StdTypes.Float, ?z:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.gob.Gob_T_testEndToEnd___localname___T3_13794.T_testEndToEnd___localname___T3_13794((x : stdgo.GoFloat64), z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
