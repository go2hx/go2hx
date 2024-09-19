package stdgo._internal.net.http;
function _http2actualContentLength(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.GoInt64 {
        if (((_req.body == null) || (stdgo.Go.toInterface(_req.body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return (0i64 : stdgo.GoInt64);
        };
        if (_req.contentLength != ((0i64 : stdgo.GoInt64))) {
            return _req.contentLength;
        };
        return (-1i64 : stdgo.GoInt64);
    }
