package stdgo._internal.net;
@:structInit class NS {
    public var host : stdgo.GoString = "";
    public function new(?host:stdgo.GoString) {
        if (host != null) this.host = host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NS(host);
    }
}
