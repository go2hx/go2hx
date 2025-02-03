package stdgo.net.netip;
@:structInit @:using(stdgo.net.netip.Netip.AddrPort_static_extension) abstract AddrPort(stdgo._internal.net.netip.Netip_AddrPort.AddrPort) from stdgo._internal.net.netip.Netip_AddrPort.AddrPort to stdgo._internal.net.netip.Netip_AddrPort.AddrPort {
    public var _ip(get, set) : Addr;
    function get__ip():Addr return this._ip;
    function set__ip(v:Addr):Addr {
        this._ip = v;
        return v;
    }
    public var _port(get, set) : std.UInt;
    function get__port():std.UInt return this._port;
    function set__port(v:std.UInt):std.UInt {
        this._port = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_ip:Addr, ?_port:std.UInt) this = new stdgo._internal.net.netip.Netip_AddrPort.AddrPort(_ip, (_port : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
