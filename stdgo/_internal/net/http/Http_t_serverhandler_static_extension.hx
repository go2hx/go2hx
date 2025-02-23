package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_serverHandler_asInterface) class T_serverHandler_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _sh:stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler, _rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _sh:stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler = _sh?.__copy__();
        var _handler = ((@:checkr _sh._srv ?? throw "null pointer dereference").handler : stdgo._internal.net.http.Http_handler.Handler);
        if (_handler == null) {
            _handler = stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultservemux.defaultServeMux);
        };
        if (((!(@:checkr _sh._srv ?? throw "null pointer dereference").disableGeneralOptionsHandler && (@:checkr _req ?? throw "null pointer dereference").requestURI == (("*" : stdgo.GoString)) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").method == ("OPTIONS" : stdgo.GoString)) : Bool)) {
            _handler = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler() : stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler));
        };
        _handler.serveHTTP(_rw, _req);
    }
}
