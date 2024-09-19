package stdgo._internal.net.http;
function _http2shouldRetryDial(_call:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        if (_call._err == null) {
            return false;
        };
        if (stdgo.Go.toInterface(_call._ctx) == (stdgo.Go.toInterface(_req.context()))) {
            return false;
        };
        if ((!stdgo._internal.errors.Errors_is_.is_(_call._err, stdgo._internal.context.Context_canceled.canceled) && !stdgo._internal.errors.Errors_is_.is_(_call._err, stdgo._internal.context.Context_deadlineExceeded.deadlineExceeded) : Bool)) {
            return false;
        };
        return _call._ctx.err() != null;
    }
