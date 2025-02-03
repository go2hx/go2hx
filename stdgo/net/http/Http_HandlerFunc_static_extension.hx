package stdgo.net.http;
class HandlerFunc_static_extension {
    static public function serveHTTP(_f:HandlerFunc, _w:ResponseWriter, _r:Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.http.Http_HandlerFunc_static_extension.HandlerFunc_static_extension.serveHTTP(_f, _w, _r);
    }
}
