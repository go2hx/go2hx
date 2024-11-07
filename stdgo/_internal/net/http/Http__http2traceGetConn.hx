package stdgo._internal.net.http;
function _http2traceGetConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _hostPort:stdgo.GoString):Void {
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_req.context());
        if (((_trace == null || (_trace : Dynamic).__nil__) || (_trace.getConn == null) : Bool)) {
            return;
        };
        _trace.getConn(_hostPort?.__copy__());
    }
