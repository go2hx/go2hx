package stdgo._internal.net.http.httputil;
function _outgoingLength(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoInt64 {
        if ((((@:checkr _req ?? throw "null pointer dereference").body == null) || (stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return (0i64 : stdgo.GoInt64);
        };
        if ((@:checkr _req ?? throw "null pointer dereference").contentLength != ((0i64 : stdgo.GoInt64))) {
            return (@:checkr _req ?? throw "null pointer dereference").contentLength;
        };
        return (-1i64 : stdgo.GoInt64);
    }
