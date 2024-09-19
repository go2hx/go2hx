package stdgo._internal.net.http;
function _http2traceWroteHeaderField(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>, _k:stdgo.GoString, _v:stdgo.GoString):Void {
        if ((((_trace != null) && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) && (_trace.wroteHeaderField != null) : Bool)) {
            _trace.wroteHeaderField(_k?.__copy__(), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_v?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
        };
    }
