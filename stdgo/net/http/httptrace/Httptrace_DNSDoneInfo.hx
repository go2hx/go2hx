package stdgo.net.http.httptrace;
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.DNSDoneInfo_static_extension) abstract DNSDoneInfo(stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo) from stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo to stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo {
    public var addrs(get, set) : Array<stdgo._internal.net.Net_IPAddr.IPAddr>;
    function get_addrs():Array<stdgo._internal.net.Net_IPAddr.IPAddr> return [for (i in this.addrs) i];
    function set_addrs(v:Array<stdgo._internal.net.Net_IPAddr.IPAddr>):Array<stdgo._internal.net.Net_IPAddr.IPAddr> {
        this.addrs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr>);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var coalesced(get, set) : Bool;
    function get_coalesced():Bool return this.coalesced;
    function set_coalesced(v:Bool):Bool {
        this.coalesced = v;
        return v;
    }
    public function new(?addrs:Array<stdgo._internal.net.Net_IPAddr.IPAddr>, ?err:stdgo.Error, ?coalesced:Bool) this = new stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo(([for (i in addrs) i] : stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr>), (err : stdgo.Error), coalesced);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
