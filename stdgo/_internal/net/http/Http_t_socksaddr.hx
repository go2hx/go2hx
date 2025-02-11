package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_socksaddr_static_extension.T_socksAddr_static_extension) class T_socksAddr {
    public var name : stdgo.GoString = "";
    public var iP : stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
    public var port : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?iP:stdgo._internal.net.Net_ip.IP, ?port:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (iP != null) this.iP = iP;
        if (port != null) this.port = port;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_socksAddr(name, iP, port);
    }
}
