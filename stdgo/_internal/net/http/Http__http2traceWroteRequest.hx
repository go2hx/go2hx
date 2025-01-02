package stdgo._internal.net.http;
function _http2traceWroteRequest(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>, _err:stdgo.Error):Void {
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && ((@:checkr _trace ?? throw "null pointer dereference").wroteRequest != null) : Bool)) {
            (@:checkr _trace ?? throw "null pointer dereference").wroteRequest(({ err : _err } : stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo));
        };
    }
