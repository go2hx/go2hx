package stdgo._internal.net.http.httptrace;
function withClientTrace(_ctx:stdgo._internal.context.Context_context.Context, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo._internal.context.Context_context.Context {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L35"
        if (({
            final value = _trace;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L36"
            throw stdgo.Go.toInterface(("nil trace" : stdgo.GoString));
        };
        var _old = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_ctx);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L39"
        _trace._compose(_old);
        _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.httptrace.Httptrace_t_clienteventcontextkey.T_clientEventContextKey() : stdgo._internal.net.http.httptrace.Httptrace_t_clienteventcontextkey.T_clientEventContextKey))), stdgo.Go.toInterface(stdgo.Go.asInterface(_trace)));
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L42"
        if (_trace._hasNetHooks()) {
            var _nt = (stdgo.Go.setRef(({ connectStart : (@:checkr _trace ?? throw "null pointer dereference").connectStart, connectDone : (@:checkr _trace ?? throw "null pointer dereference").connectDone } : stdgo._internal.internal.nettrace.Nettrace_trace.Trace)) : stdgo.Ref<stdgo._internal.internal.nettrace.Nettrace_trace.Trace>);
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L47"
            if ((@:checkr _trace ?? throw "null pointer dereference").dNSStart != null) {
                (@:checkr _nt ?? throw "null pointer dereference").dNSStart = function(_name:stdgo.GoString):Void {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L49"
                    (@:checkr _trace ?? throw "null pointer dereference").dNSStart(({ host : _name?.__copy__() } : stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L52"
            if ((@:checkr _trace ?? throw "null pointer dereference").dNSDone != null) {
                (@:checkr _nt ?? throw "null pointer dereference").dNSDone = function(_netIPs:stdgo.Slice<stdgo.AnyInterface>, _coalesced:Bool, _err:stdgo.Error):Void {
                    var _addrs = (new stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>((_netIPs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_netIPs.length : stdgo.GoInt).toBasic() > 0 ? (_netIPs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_ipaddr.IPAddr)]) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L55"
                    for (_i => _ip in _netIPs) {
                        _addrs[(_i : stdgo.GoInt)] = (stdgo.Go.typeAssert((_ip : stdgo._internal.net.Net_ipaddr.IPAddr)) : stdgo._internal.net.Net_ipaddr.IPAddr)?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L58"
                    (@:checkr _trace ?? throw "null pointer dereference").dNSDone(({ addrs : _addrs, coalesced : _coalesced, err : _err } : stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo));
                };
            };
            _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey() : stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey))), stdgo.Go.toInterface(stdgo.Go.asInterface(_nt)));
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L67"
        return _ctx;
    }
