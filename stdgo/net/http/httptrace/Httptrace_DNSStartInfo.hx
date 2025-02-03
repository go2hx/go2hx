package stdgo.net.http.httptrace;
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.DNSStartInfo_static_extension) abstract DNSStartInfo(stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo) from stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo to stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public function new(?host:String) this = new stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo((host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
