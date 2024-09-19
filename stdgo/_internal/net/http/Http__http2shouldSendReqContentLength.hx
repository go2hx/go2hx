package stdgo._internal.net.http;
function _http2shouldSendReqContentLength(_method:stdgo.GoString, _contentLength:stdgo.GoInt64):Bool {
        if ((_contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
            return true;
        };
        if ((_contentLength < (0i64 : stdgo.GoInt64) : Bool)) {
            return false;
        };
        {
            final __value__ = _method;
            if (__value__ == (("POST" : stdgo.GoString)) || __value__ == (("PUT" : stdgo.GoString)) || __value__ == (("PATCH" : stdgo.GoString))) {
                return true;
            } else {
                return false;
            };
        };
    }
