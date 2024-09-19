package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_redirectHandler_asInterface) class T_redirectHandler_static_extension {
    @:keep
    static public function serveHTTP( _rh:stdgo.Ref<stdgo._internal.net.http.Http_T_redirectHandler.T_redirectHandler>, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _rh:stdgo.Ref<stdgo._internal.net.http.Http_T_redirectHandler.T_redirectHandler> = _rh;
        stdgo._internal.net.http.Http_redirect.redirect(_w, _r, _rh._url?.__copy__(), _rh._code);
    }
}
