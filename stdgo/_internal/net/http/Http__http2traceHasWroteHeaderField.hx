package stdgo._internal.net.http;
function _http2traceHasWroteHeaderField(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Bool {
        return ((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaderField != null) : Bool);
    }
