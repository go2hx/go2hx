package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.net.netip.Netip_Addr_static_extension.Addr_static_extension) class Addr {
    public var _addr : stdgo._internal.net.netip.Netip_T_uint128.T_uint128 = ({} : stdgo._internal.net.netip.Netip_T_uint128.T_uint128);
    public var _z : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>);
    public function new(?_addr:stdgo._internal.net.netip.Netip_T_uint128.T_uint128, ?_z:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>) {
        if (_addr != null) this._addr = _addr;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Addr(_addr, _z);
    }
}
