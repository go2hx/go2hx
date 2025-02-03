package stdgo.net.netip;
@:structInit @:using(stdgo.net.netip.Netip.Addr_static_extension) abstract Addr(stdgo._internal.net.netip.Netip_Addr.Addr) from stdgo._internal.net.netip.Netip_Addr.Addr to stdgo._internal.net.netip.Netip_Addr.Addr {
    public var _addr(get, set) : T_uint128;
    function get__addr():T_uint128 return this._addr;
    function set__addr(v:T_uint128):T_uint128 {
        this._addr = v;
        return v;
    }
    public var _z(get, set) : stdgo._internal.internal.intern.Intern_Value.Value;
    function get__z():stdgo._internal.internal.intern.Intern_Value.Value return this._z;
    function set__z(v:stdgo._internal.internal.intern.Intern_Value.Value):stdgo._internal.internal.intern.Intern_Value.Value {
        this._z = (v : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
        return v;
    }
    public function new(?_addr:T_uint128, ?_z:stdgo._internal.internal.intern.Intern_Value.Value) this = new stdgo._internal.net.netip.Netip_Addr.Addr(_addr, (_z : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
