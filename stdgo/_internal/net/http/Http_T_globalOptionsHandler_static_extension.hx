package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_globalOptionsHandler_asInterface) class T_globalOptionsHandler_static_extension {
    @:keep
    static public function serveHTTP( _:stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _:stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler = _?.__copy__();
        _w.header().set(("Content-Length" : stdgo.GoString), ("0" : stdgo.GoString));
        if (_r.contentLength != ((0i64 : stdgo.GoInt64))) {
            var _mb = (stdgo._internal.net.http.Http_maxBytesReader.maxBytesReader(_w, _r.body, (4096i64 : stdgo.GoInt64)) : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, _mb);
        };
    }
}
