package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_tcpaddr_static_extension.TCPAddr_static_extension) class TCPAddr {
    public var iP : stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
    public var port : stdgo.GoInt = 0;
    public var zone : stdgo.GoString = "";
    public function new(?iP:stdgo._internal.net.Net_ip.IP, ?port:stdgo.GoInt, ?zone:stdgo.GoString) {
        if (iP != null) this.iP = iP;
        if (port != null) this.port = port;
        if (zone != null) this.zone = zone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TCPAddr(iP, port, zone);
    }
}
