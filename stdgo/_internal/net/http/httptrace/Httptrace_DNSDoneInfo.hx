package stdgo._internal.net.http.httptrace;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo_static_extension.DNSDoneInfo_static_extension) class DNSDoneInfo {
    public var addrs : stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr> = (null : stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr>);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var coalesced : Bool = false;
    public function new(?addrs:stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr>, ?err:stdgo.Error, ?coalesced:Bool) {
        if (addrs != null) this.addrs = addrs;
        if (err != null) this.err = err;
        if (coalesced != null) this.coalesced = coalesced;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DNSDoneInfo(addrs, err, coalesced);
    }
}
