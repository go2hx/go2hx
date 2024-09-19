package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_fileHandler_asInterface) class T_fileHandler_static_extension {
    @:keep
    static public function serveHTTP( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler>, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler> = _f;
        var _upath = (_r.url.path?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_upath?.__copy__(), ("/" : stdgo.GoString))) {
            _upath = (("/" : stdgo.GoString) + _upath?.__copy__() : stdgo.GoString)?.__copy__();
            _r.url.path = _upath?.__copy__();
        };
        stdgo._internal.net.http.Http__serveFile._serveFile(_w, _r, _f._root, stdgo._internal.path.Path_clean.clean(_upath?.__copy__())?.__copy__(), true);
    }
}
