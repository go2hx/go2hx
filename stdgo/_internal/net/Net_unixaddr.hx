package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_unixaddr_static_extension.UnixAddr_static_extension) class UnixAddr {
    public var name : stdgo.GoString = "";
    public var net : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?net:stdgo.GoString) {
        if (name != null) this.name = name;
        if (net != null) this.net = net;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnixAddr(name, net);
    }
}
