package stdgo.net.http.httptrace;
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.WroteRequestInfo_static_extension) abstract WroteRequestInfo(stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo) from stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo to stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
