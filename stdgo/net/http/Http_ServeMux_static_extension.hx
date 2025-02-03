package stdgo.net.http;
class ServeMux_static_extension {
    static public function handleFunc(_mux:ServeMux, _pattern:String, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>);
        final _pattern = (_pattern : stdgo.GoString);
        final _handler = _handler;
        stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.handleFunc(_mux, _pattern, _handler);
    }
    static public function handle(_mux:ServeMux, _pattern:String, _handler:Handler):Void {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>);
        final _pattern = (_pattern : stdgo.GoString);
        stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.handle(_mux, _pattern, _handler);
    }
    static public function serveHTTP(_mux:ServeMux, _w:ResponseWriter, _r:Request):Void {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.serveHTTP(_mux, _w, _r);
    }
    static public function handler(_mux:ServeMux, _r:Request):stdgo.Tuple<Handler, String> {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_ServeMux.ServeMux>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.handler(_mux, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
