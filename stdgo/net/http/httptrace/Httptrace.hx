package stdgo.net.http.httptrace;
typedef ClientTrace = stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace;
typedef WroteRequestInfo = stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo;
typedef DNSStartInfo = stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo;
typedef DNSDoneInfo = stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo;
typedef GotConnInfo = stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo;
typedef ClientTracePointer = stdgo._internal.net.http.httptrace.Httptrace_clienttracepointer.ClientTracePointer;
typedef WroteRequestInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfopointer.WroteRequestInfoPointer;
typedef DNSStartInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfopointer.DNSStartInfoPointer;
typedef DNSDoneInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfopointer.DNSDoneInfoPointer;
typedef GotConnInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_gotconninfopointer.GotConnInfoPointer;
/**
    * Package httptrace provides mechanisms to trace the events within
    * HTTP client requests.
**/
class Httptrace {
    /**
        * ContextClientTrace returns the ClientTrace associated with the
        * provided context. If none, it returns nil.
    **/
    static public inline function contextClientTrace(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace> return stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_ctx);
    /**
        * WithClientTrace returns a new context based on the provided parent
        * ctx. HTTP client requests made with the returned context will use
        * the provided trace hooks, in addition to any previous hooks
        * registered with ctx. Any hooks defined in the provided trace will
        * be called first.
    **/
    static public inline function withClientTrace(_ctx:stdgo._internal.context.Context_context.Context, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo._internal.context.Context_context.Context return stdgo._internal.net.http.httptrace.Httptrace_withclienttrace.withClientTrace(_ctx, _trace);
}
