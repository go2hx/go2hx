package stdgo.net.http.httputil;
class ReverseProxy_static_extension {
    static public function _handleUpgradeResponse(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request, _res:stdgo._internal.net.http.Http_Response.Response):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _res = (_res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._handleUpgradeResponse(_p, _rw, _req, _res);
    }
    static public function _logf(_p:ReverseProxy, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _format = (_format : stdgo.GoString);
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._logf(_p, _format, ...[for (i in _args) i]);
    }
    static public function _copyBuffer(_p:ReverseProxy, _dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._copyBuffer(_p, _dst, _src, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _copyResponse(_p:ReverseProxy, _dst:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _src:stdgo._internal.io.Io_Reader.Reader, _flushInterval:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        return stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._copyResponse(_p, _dst, _src, _flushInterval);
    }
    static public function _flushInterval(_p:ReverseProxy, _res:stdgo._internal.net.http.Http_Response.Response):stdgo._internal.time.Time_Duration.Duration {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _res = (_res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._flushInterval(_p, _res);
    }
    static public function serveHTTP(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension.serveHTTP(_p, _rw, _req);
    }
    static public function _modifyResponse(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _res:stdgo._internal.net.http.Http_Response.Response, _req:stdgo._internal.net.http.Http_Request.Request):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _res = (_res : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._modifyResponse(_p, _rw, _res, _req);
    }
    static public function _getErrorHandler(_p:ReverseProxy):(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        return (_0, _1, _2) -> stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._getErrorHandler(_p)(_0, _1, _2);
    }
    static public function _defaultErrorHandler(_p:ReverseProxy, _rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo._internal.net.http.Http_Request.Request, _err:stdgo.Error):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.net.http.httputil.Httputil_ReverseProxy_static_extension.ReverseProxy_static_extension._defaultErrorHandler(_p, _rw, _req, _err);
    }
}
