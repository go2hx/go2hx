package stdgo._internal.net.http.httputil;
function _shouldPanicOnCopyError(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        if (stdgo._internal.net.http.httputil.Httputil__inOurTests._inOurTests) {
            return true;
        };
        if (_req.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_serverContextKey.serverContextKey))) != null) {
            return true;
        };
        return false;
    }
