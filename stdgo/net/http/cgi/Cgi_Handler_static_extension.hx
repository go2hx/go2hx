package stdgo.net.http.cgi;
class Handler_static_extension {
    static public function _handleInternalRedirect(_h:Handler, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request, _path:String):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _path = (_path : stdgo.GoString);
        stdgo._internal.net.http.cgi.Cgi_Handler_static_extension.Handler_static_extension._handleInternalRedirect(_h, _rw, _req, _path);
    }
    static public function _printf(_h:Handler, _format:String, _v:haxe.Rest<stdgo.AnyInterface>):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.net.http.cgi.Cgi_Handler_static_extension.Handler_static_extension._printf(_h, _format, ...[for (i in _v) i]);
    }
    static public function serveHTTP(_h:Handler, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.http.cgi.Cgi_Handler_static_extension.Handler_static_extension.serveHTTP(_h, _rw, _req);
    }
    static public function _stderr(_h:Handler):stdgo._internal.io.Io_Writer.Writer {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.cgi.Cgi_Handler.Handler>);
        return stdgo._internal.net.http.cgi.Cgi_Handler_static_extension.Handler_static_extension._stderr(_h);
    }
}
