package stdgo._internal.net.http;
function readRequest(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.http.Http__readrequest._readRequest(_b), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((@:checkr _req ?? throw "null pointer dereference").header != null) (@:checkr _req ?? throw "null pointer dereference").header.__remove__(("Host" : stdgo.GoString));
        return { _0 : _req, _1 : _err };
    }
