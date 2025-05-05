package stdgo._internal.net.http.httputil;
function _outgoingLength(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoInt64 {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L65"
        if ((((@:checkr _req ?? throw "null pointer dereference").body == null) || (stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody))) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L66"
            return (0i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L68"
        if ((@:checkr _req ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L69"
            return (@:checkr _req ?? throw "null pointer dereference").contentLength;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/dump.go#L71"
        return (-1i64 : stdgo.GoInt64);
    }
