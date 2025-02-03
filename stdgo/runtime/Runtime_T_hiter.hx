package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_hiter_static_extension) abstract T_hiter(stdgo._internal.runtime.Runtime_T_hiter.T_hiter) from stdgo._internal.runtime.Runtime_T_hiter.T_hiter to stdgo._internal.runtime.Runtime_T_hiter.T_hiter {
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?b:std.UInt) this = new stdgo._internal.runtime.Runtime_T_hiter.T_hiter((b : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
