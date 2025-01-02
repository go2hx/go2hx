package stdgo._internal.net.http;
function readRequest(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.http.Http__readRequest._readRequest(_b), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((@:checkr _req ?? throw "null pointer dereference").header != null) (@:checkr _req ?? throw "null pointer dereference").header.remove(("Host" : stdgo.GoString));
        return { _0 : _req, _1 : _err };
    }
