package stdgo._internal.net.http;
function _checkIfNoneMatch(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo._internal.net.http.Http_T_condResult.T_condResult {
        var _inm = ((@:checkr _r ?? throw "null pointer dereference").header._get(("If-None-Match" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_inm == (stdgo.Go.str())) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        var _buf = (_inm?.__copy__() : stdgo.GoString);
        while (true) {
            _buf = stdgo._internal.net.textproto.Textproto_trimString.trimString(_buf?.__copy__())?.__copy__();
            if ((_buf.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_buf[(0 : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            if (_buf[(0 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
                return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
            var __tmp__ = stdgo._internal.net.http.Http__scanETag._scanETag(_buf?.__copy__()), _etag:stdgo.GoString = __tmp__._0, _remain:stdgo.GoString = __tmp__._1;
            if (_etag == (stdgo.Go.str())) {
                break;
            };
            if (stdgo._internal.net.http.Http__etagWeakMatch._etagWeakMatch(_etag?.__copy__(), _w.header()._get(("Etag" : stdgo.GoString))?.__copy__())) {
                return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
            _buf = _remain?.__copy__();
        };
        return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
    }
