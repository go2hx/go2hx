package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_socksAddr_static_extension.T_socksAddr_static_extension) class T_socksAddr {
    public var name : stdgo.GoString = "";
    public var ip : stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
    public var port : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?ip:stdgo._internal.net.Net_IP.IP, ?port:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (ip != null) this.ip = ip;
        if (port != null) this.port = port;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_socksAddr(name, ip, port);
    }
}