package stdgo._internal.net.http;
function _http2traceWroteHeaders(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Void {
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteHeaders != null) : Bool)) {
            (@:checkr _trace ?? throw "null pointer dereference").wroteHeaders();
        };
    }
