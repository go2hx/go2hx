package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_serverHandler_asInterface) class T_serverHandler_static_extension {
    @:keep
    static public function serveHTTP( _sh:stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _sh:stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler = _sh?.__copy__();
        var _handler = (_sh._srv.handler : stdgo._internal.net.http.Http_Handler.Handler);
        if (_handler == null) {
            _handler = stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux);
        };
        if (((!_sh._srv.disableGeneralOptionsHandler && _req.requestURI == (("*" : stdgo.GoString)) : Bool) && (_req.method == ("OPTIONS" : stdgo.GoString)) : Bool)) {
            _handler = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler() : stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler));
        };
        _handler.serveHTTP(_rw, _req);
    }
}
