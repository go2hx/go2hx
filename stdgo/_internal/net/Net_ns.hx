package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_ns_static_extension.NS_static_extension) class NS {
    public var host : stdgo.GoString = "";
    public function new(?host:stdgo.GoString) {
        if (host != null) this.host = host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NS(host);
    }
}
