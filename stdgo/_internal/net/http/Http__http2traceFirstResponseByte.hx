package stdgo._internal.net.http;
function _http2traceFirstResponseByte(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Void {
        if (((_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.gotFirstResponseByte != null) : Bool)) {
            _trace.gotFirstResponseByte();
        };
    }
