package stdgo._internal.net.netip;
@:structInit @:using(stdgo._internal.net.netip.Netip_AddrPort_static_extension.AddrPort_static_extension) class AddrPort {
    public var _ip : stdgo._internal.net.netip.Netip_Addr.Addr = ({} : stdgo._internal.net.netip.Netip_Addr.Addr);
    public var _port : stdgo.GoUInt16 = 0;
    public function new(?_ip:stdgo._internal.net.netip.Netip_Addr.Addr, ?_port:stdgo.GoUInt16) {
        if (_ip != null) this._ip = _ip;
        if (_port != null) this._port = _port;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AddrPort(_ip, _port);
    }
}
