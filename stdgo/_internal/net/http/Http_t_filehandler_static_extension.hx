package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_fileHandler_asInterface) class T_fileHandler_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_filehandler.T_fileHandler>, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_filehandler.T_fileHandler> = _f;
        var _upath = ((@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.net.http.Http__strings._strings.hasPrefix(_upath?.__copy__(), ("/" : stdgo.GoString))) {
            _upath = (("/" : stdgo.GoString) + _upath?.__copy__() : stdgo.GoString)?.__copy__();
            (@:checkr (@:checkr _r ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").path = _upath?.__copy__();
        };
        stdgo._internal.net.http.Http__servefile._serveFile(_w, _r, (@:checkr _f ?? throw "null pointer dereference")._root, stdgo._internal.net.http.Http__path._path.clean(_upath?.__copy__())?.__copy__(), true);
    }
}
