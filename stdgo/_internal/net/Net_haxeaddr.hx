package stdgo._internal.net;
@:using(stdgo._internal.net.Net_haxeaddr_static_extension.HaxeAddr_static_extension) class HaxeAddr {
    @:local
    private var _network : String = "";
    @:local
    private var _ip : String = "";
    @:local
    private var _port : Int = 0;
    public function new(network, ip, port) {
        this._network = network;
        this._ip = ip;
        this._port = port;
    }
    public dynamic function network():stdgo.GoString {
        return _network;
    }
    public dynamic function string():stdgo.GoString {
        return "";
    }
    public function __underlying__():stdgo.AnyInterface return stdgo.Go.toInterface(this);
}
