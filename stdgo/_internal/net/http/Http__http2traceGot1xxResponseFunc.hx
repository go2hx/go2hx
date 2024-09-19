package stdgo._internal.net.http;
function _http2traceGot1xxResponseFunc(_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error {
        if (_trace != null && ((_trace : Dynamic).__nil__ == null || !(_trace : Dynamic).__nil__)) {
            return _trace.got1xxResponse;
        };
        return null;
    }
