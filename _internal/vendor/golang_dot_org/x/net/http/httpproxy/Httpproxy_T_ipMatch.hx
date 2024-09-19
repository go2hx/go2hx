package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_ipMatch_static_extension.T_ipMatch_static_extension) class T_ipMatch {
    public var _ip : stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
    public var _port : stdgo.GoString = "";
    public function new(?_ip:stdgo._internal.net.Net_IP.IP, ?_port:stdgo.GoString) {
        if (_ip != null) this._ip = _ip;
        if (_port != null) this._port = _port;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ipMatch(_ip, _port);
    }
}
