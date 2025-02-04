package stdgo._internal.net.http.httptrace;
function contextClientTrace(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.httptrace.Httptrace_t_clienteventcontextkey.T_clientEventContextKey() : stdgo._internal.net.http.httptrace.Httptrace_t_clienteventcontextkey.T_clientEventContextKey)))) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>)) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>), _1 : false };
        }, _trace = __tmp__._0, __0 = __tmp__._1;
        return _trace;
    }
