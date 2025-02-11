package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_ipnet_static_extension.IPNet_static_extension) class IPNet {
    public var iP : stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
    public var mask : stdgo._internal.net.Net_ipmask.IPMask = (new stdgo._internal.net.Net_ipmask.IPMask(0, 0) : stdgo._internal.net.Net_ipmask.IPMask);
    public function new(?iP:stdgo._internal.net.Net_ip.IP, ?mask:stdgo._internal.net.Net_ipmask.IPMask) {
        if (iP != null) this.iP = iP;
        if (mask != null) this.mask = mask;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new IPNet(iP, mask);
    }
}
