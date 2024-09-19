package stdgo._internal.net.http.httptrace;
function withClientTrace(_ctx:stdgo._internal.context.Context_Context.Context, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo._internal.context.Context_Context.Context {
        if (_trace == null || (_trace : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("nil trace" : stdgo.GoString));
        };
        var _old = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx);
        _trace._compose(_old);
        _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface((new stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey() : stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey)), stdgo.Go.toInterface(stdgo.Go.asInterface(_trace)));
        if (_trace._hasNetHooks()) {
            var _nt = (stdgo.Go.setRef(({ connectStart : _trace.connectStart, connectDone : _trace.connectDone } : _internal.internal.nettrace.Nettrace_Trace.Trace)) : stdgo.Ref<_internal.internal.nettrace.Nettrace_Trace.Trace>);
            if (_trace.dnsstart != null) {
                _nt.dnsstart = function(_name:stdgo.GoString):Void {
                    _trace.dnsstart(({ host : _name?.__copy__() } : stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo));
                };
            };
            if (_trace.dnsdone != null) {
                _nt.dnsdone = function(_netIPs:stdgo.Slice<stdgo.AnyInterface>, _coalesced:Bool, _err:stdgo.Error):Void {
                    var _addrs = (new stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr>((_netIPs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_netIPs.length : stdgo.GoInt).toBasic() > 0 ? (_netIPs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_IPAddr.IPAddr)]) : stdgo.Slice<stdgo._internal.net.Net_IPAddr.IPAddr>);
                    for (_i => _ip in _netIPs) {
                        _addrs[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((_ip : stdgo._internal.net.Net_IPAddr.IPAddr)) : stdgo._internal.net.Net_IPAddr.IPAddr)?.__copy__();
                    };
                    _trace.dnsdone(({ addrs : _addrs, coalesced : _coalesced, err : _err } : stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo));
                };
            };
            _ctx = stdgo._internal.context.Context_withValue.withValue(_ctx, stdgo.Go.toInterface((new _internal.internal.nettrace.Nettrace_TraceKey.TraceKey() : _internal.internal.nettrace.Nettrace_TraceKey.TraceKey)), stdgo.Go.toInterface(_nt));
        };
        return _ctx;
    }
