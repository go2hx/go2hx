package stdgo._internal.net.http.httptrace;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo_static_extension.DNSStartInfo_static_extension) class DNSStartInfo {
    public var host : stdgo.GoString = "";
    public function new(?host:stdgo.GoString) {
        if (host != null) this.host = host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DNSStartInfo(host);
    }
}
