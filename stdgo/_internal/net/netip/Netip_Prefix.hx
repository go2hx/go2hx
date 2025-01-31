package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.net.netip.Netip_Prefix_static_extension.Prefix_static_extension) class Prefix {
    public var _ip : stdgo._internal.net.netip.Netip_Addr.Addr = ({} : stdgo._internal.net.netip.Netip_Addr.Addr);
    public var _bitsPlusOne : stdgo.GoUInt8 = 0;
    public function new(?_ip:stdgo._internal.net.netip.Netip_Addr.Addr, ?_bitsPlusOne:stdgo.GoUInt8) {
        if (_ip != null) this._ip = _ip;
        if (_bitsPlusOne != null) this._bitsPlusOne = _bitsPlusOne;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prefix(_ip, _bitsPlusOne);
    }
}
