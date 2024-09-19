package stdgo._internal.net.http;
function _checkIfMatch(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo._internal.net.http.Http_T_condResult.T_condResult {
        var _im = (_r.header.get(("If-Match" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_im == (stdgo.Go.str())) {
            return (0 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
        };
        while (true) {
            _im = stdgo._internal.net.textproto.Textproto_trimString.trimString(_im?.__copy__())?.__copy__();
            if ((_im.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_im[(0 : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                _im = (_im.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                continue;
            };
            if (_im[(0 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
                return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
            var __tmp__ = stdgo._internal.net.http.Http__scanETag._scanETag(_im?.__copy__()), _etag:stdgo.GoString = __tmp__._0, _remain:stdgo.GoString = __tmp__._1;
            if (_etag == (stdgo.Go.str())) {
                break;
            };
            if (stdgo._internal.net.http.Http__etagStrongMatch._etagStrongMatch(_etag?.__copy__(), _w.header()._get(("Etag" : stdgo.GoString))?.__copy__())) {
                return (1 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
            };
            _im = _remain?.__copy__();
        };
        return (2 : stdgo._internal.net.http.Http_T_condResult.T_condResult);
    }
