package stdgo._internal.net.http;
function _http1ServerSupportsRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        if (_req.protoMajor == ((1 : stdgo.GoInt))) {
            return true;
        };
        if ((((_req.protoMajor == ((2 : stdgo.GoInt)) && _req.protoMinor == ((0 : stdgo.GoInt)) : Bool) && _req.method == (("PRI" : stdgo.GoString)) : Bool) && (_req.requestURI == ("*" : stdgo.GoString)) : Bool)) {
            return true;
        };
        return false;
    }
