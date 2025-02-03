package stdgo.net.http.httptrace;
/**
    Package httptrace provides mechanisms to trace the events within
    HTTP client requests.
**/
class Httptrace {
    /**
        ContextClientTrace returns the ClientTrace associated with the
        provided context. If none, it returns nil.
    **/
    static public inline function contextClientTrace(_ctx:stdgo._internal.context.Context_Context.Context):ClientTrace {
        return stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx);
    }
    /**
        WithClientTrace returns a new context based on the provided parent
        ctx. HTTP client requests made with the returned context will use
        the provided trace hooks, in addition to any previous hooks
        registered with ctx. Any hooks defined in the provided trace will
        be called first.
    **/
    static public inline function withClientTrace(_ctx:stdgo._internal.context.Context_Context.Context, _trace:ClientTrace):stdgo._internal.context.Context_Context.Context {
        final _trace = (_trace : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>);
        return stdgo._internal.net.http.httptrace.Httptrace_withClientTrace.withClientTrace(_ctx, _trace);
    }
}
