package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
function contextClientTrace(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_ctx.value(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey() : stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey)))) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>)) : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>), _1 : false };
        }, _trace = __tmp__._0, __0 = __tmp__._1;
        return _trace;
    }
