package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_IPAddr_static_extension.IPAddr_static_extension) class IPAddr {
    public var ip : stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
    public var zone : stdgo.GoString = "";
    public function new(?ip:stdgo._internal.net.Net_IP.IP, ?zone:stdgo.GoString) {
        if (ip != null) this.ip = ip;
        if (zone != null) this.zone = zone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IPAddr(ip, zone);
    }
}