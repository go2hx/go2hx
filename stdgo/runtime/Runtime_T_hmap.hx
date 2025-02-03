package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_hmap_static_extension) abstract T_hmap(stdgo._internal.runtime.Runtime_T_hmap.T_hmap) from stdgo._internal.runtime.Runtime_T_hmap.T_hmap to stdgo._internal.runtime.Runtime_T_hmap.T_hmap {
    public var b(get, set) : std.UInt;
    function get_b():std.UInt return this.b;
    function set_b(v:std.UInt):std.UInt {
        this.b = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?b:std.UInt) this = new stdgo._internal.runtime.Runtime_T_hmap.T_hmap((b : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
