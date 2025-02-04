package stdgo._internal.net.netip;
@:structInit @:using(stdgo._internal.net.netip.Netip_addr_static_extension.Addr_static_extension) class Addr {
    public var _addr : stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = ({} : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    public var _z : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
    public function new(?_addr:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, ?_z:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>) {
        if (_addr != null) this._addr = _addr;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Addr(_addr, _z);
    }
}
