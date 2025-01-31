package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo_static_extension.DNSStartInfo_static_extension) class DNSStartInfo {
    public var host : stdgo.GoString = "";
    public function new(?host:stdgo.GoString) {
        if (host != null) this.host = host;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DNSStartInfo(host);
    }
}
