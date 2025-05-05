package stdgo._internal.net.http.httputil;
function _shouldPanicOnCopyError(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L551"
        if (stdgo._internal.net.http.httputil.Httputil__inourtests._inOurTests) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L553"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L555"
        if (_req.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_servercontextkey.serverContextKey))) != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L558"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L562"
        return false;
    }
