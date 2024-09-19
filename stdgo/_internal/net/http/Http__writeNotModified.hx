package stdgo._internal.net.http;
function _writeNotModified(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter):Void {
        var _h = (_w.header() : stdgo._internal.net.http.Http_Header.Header);
        if (_h != null) _h.remove(("Content-Type" : stdgo.GoString));
        if (_h != null) _h.remove(("Content-Length" : stdgo.GoString));
        if (_h != null) _h.remove(("Content-Encoding" : stdgo.GoString));
        if (_h.get(("Etag" : stdgo.GoString)) != (stdgo.Go.str())) {
            if (_h != null) _h.remove(("Last-Modified" : stdgo.GoString));
        };
        _w.writeHeader((304 : stdgo.GoInt));
    }
