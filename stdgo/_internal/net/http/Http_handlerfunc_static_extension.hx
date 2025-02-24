package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.HandlerFunc_asInterface) class HandlerFunc_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _f:stdgo._internal.net.http.Http_handlerfunc.HandlerFunc, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _f:stdgo._internal.net.http.Http_handlerfunc.HandlerFunc = _f;
        _f(_w, _r);
    }
}
