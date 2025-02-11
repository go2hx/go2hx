package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_ipaddr_static_extension.IPAddr_static_extension) class IPAddr {
    public var iP : stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
    public var zone : stdgo.GoString = "";
    public function new(?iP:stdgo._internal.net.Net_ip.IP, ?zone:stdgo.GoString) {
        if (iP != null) this.iP = iP;
        if (zone != null) this.zone = zone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IPAddr(iP, zone);
    }
}
