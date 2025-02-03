package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_isZeroBug_static_extension) abstract T_isZeroBug(stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug) from stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug to stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug {
    public var t(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_t():stdgo._internal.time.Time_Time.Time return this.t;
    function set_t(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.t = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public var a(get, set) : T_isZeroBugArray;
    function get_a():T_isZeroBugArray return this.a;
    function set_a(v:T_isZeroBugArray):T_isZeroBugArray {
        this.a = v;
        return v;
    }
    public var f(get, set) : T_isZeroBugInterface;
    function get_f():T_isZeroBugInterface return this.f;
    function set_f(v:T_isZeroBugInterface):T_isZeroBugInterface {
        this.f = v;
        return v;
    }
    public function new(?t:stdgo._internal.time.Time_Time.Time, ?s:String, ?i:StdTypes.Int, ?a:T_isZeroBugArray, ?f:T_isZeroBugInterface) this = new stdgo._internal.encoding.gob.Gob_T_isZeroBug.T_isZeroBug(t, (s : stdgo.GoString), (i : stdgo.GoInt), a, f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
