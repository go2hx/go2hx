package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.HandlerFunc_asInterface) class HandlerFunc_static_extension {
    @:keep
    @:tdfield
    static public function serveHTTP( _f:stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc, _w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        @:recv var _f:stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc = _f;
        _f(_w, _r);
    }
}
