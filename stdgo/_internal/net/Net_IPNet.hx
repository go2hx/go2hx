package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_IPNet_static_extension.IPNet_static_extension) class IPNet {
    public var ip : stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
    public var mask : stdgo._internal.net.Net_IPMask.IPMask = new stdgo._internal.net.Net_IPMask.IPMask(0, 0);
    public function new(?ip:stdgo._internal.net.Net_IP.IP, ?mask:stdgo._internal.net.Net_IPMask.IPMask) {
        if (ip != null) this.ip = ip;
        if (mask != null) this.mask = mask;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IPNet(ip, mask);
    }
}
