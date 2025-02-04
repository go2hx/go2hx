package stdgo._internal.net.netip;
@:structInit @:using(stdgo._internal.net.netip.Netip_prefix_static_extension.Prefix_static_extension) class Prefix {
    public var _ip : stdgo._internal.net.netip.Netip_addr.Addr = ({} : stdgo._internal.net.netip.Netip_addr.Addr);
    public var _bitsPlusOne : stdgo.GoUInt8 = 0;
    public function new(?_ip:stdgo._internal.net.netip.Netip_addr.Addr, ?_bitsPlusOne:stdgo.GoUInt8) {
        if (_ip != null) this._ip = _ip;
        if (_bitsPlusOne != null) this._bitsPlusOne = _bitsPlusOne;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prefix(_ip, _bitsPlusOne);
    }
}
