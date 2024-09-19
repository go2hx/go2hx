package stdgo._internal.net.http.httptrace;
@:structInit class DNSStartInfo {
    public var host : stdgo.GoString = "";
    public function new(?host:stdgo.GoString) {
        if (host != null) this.host = host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DNSStartInfo(host);
    }
}
