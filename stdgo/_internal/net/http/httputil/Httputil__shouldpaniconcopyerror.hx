package stdgo._internal.net.http.httputil;
function _shouldPanicOnCopyError(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        if (stdgo._internal.net.http.httputil.Httputil__inourtests._inOurTests) {
            return true;
        };
        if (@:check2r _req.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_servercontextkey.serverContextKey))) != null) {
            return true;
        };
        return false;
    }
