package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_addrPortUDPAddr_static_extension) abstract T_addrPortUDPAddr(stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr) from stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr to stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr {
    public var addrPort(get, set) : AddrPort;
    function get_addrPort():AddrPort return this.addrPort;
    function set_addrPort(v:AddrPort):AddrPort {
        this.addrPort = v;
        return v;
    }
    public function new(?addrPort:AddrPort) this = new stdgo._internal.net.Net_T_addrPortUDPAddr.T_addrPortUDPAddr(addrPort);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
