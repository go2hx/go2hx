package stdgo._internal.net.http;
function _http1ServerSupportsRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        if ((@:checkr _req ?? throw "null pointer dereference").protoMajor == ((1 : stdgo.GoInt))) {
            return true;
        };
        if (((((@:checkr _req ?? throw "null pointer dereference").protoMajor == ((2 : stdgo.GoInt)) && (@:checkr _req ?? throw "null pointer dereference").protoMinor == ((0 : stdgo.GoInt)) : Bool) && (@:checkr _req ?? throw "null pointer dereference").method == (("PRI" : stdgo.GoString)) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").requestURI == ("*" : stdgo.GoString)) : Bool)) {
            return true;
        };
        return false;
    }
